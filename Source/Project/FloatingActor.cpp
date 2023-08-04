// Fill out your copyright notice in the Description page of Project Settings.

#include "FloatingActor.h"
#include <iostream>
#include <cstdint>
#include "../deps/icp-client-cpp/lib-agent-c/inc/zondax_ic.h"
#include "../deps/icp-client-cpp/lib-agent-cpp/inc/agent.h"
#include "../deps/icp-client-cpp/lib-agent-cpp/inc/helper.h"
#include "../deps/icp-client-cpp/lib-agent-cpp/inc/idl_value.h"
#include "../deps/icp-client-cpp/examples-cpp/counter/declarations/counter/counter.hpp"
#include "Paths.h"
using namespace zondax;
// Sets default values
AFloatingActor::AFloatingActor()
{
 	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = true;
}

// Called when the game starts or when spawned
void AFloatingActor::BeginPlay()
{
	Super::BeginPlay();

}

// Called every frame
void AFloatingActor::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);

    std::string id_text = "q4eej-kyaaa-aaaaa-aaaha-cai";
    std::string url = "http://127.0.0.1:4943";
    
    // Read Did file
    FString FilePath = FPaths::ProjectDir() + TEXT("Source/counter_backend.did");
    FString FileContent;
    FFileHelper::LoadFileToString(FileContent, *FilePath);
    std::string CharContent = TCHAR_TO_UTF8(*FileContent);
    std::vector<char> Buffer(CharContent.begin(), CharContent.end() + FileContent.Len());

    // Get principal form text
    auto principal = Principal::FromText(id_text);

    // Construct anonymous id
    Identity anonymousIdentity;

    // Create agent with agent constructor
    auto agent = Agent::create_agent(url, std::move(anonymousIdentity),
                                      std::get<Principal>(principal), Buffer);

    uint64_t jump = 0;
    SERVICE srv(std::move(std::get<Agent>(agent)));
    auto result = srv.get();

    std::visit([&jump](const auto& value) {
        // Check if the value is an uint64_t
        if constexpr (std::is_same_v<std::decay_t<decltype(value)>, uint64_t>) {
            UE_LOG(LogTemp, Warning, TEXT("Canister get: %d"), value);
            jump = value;
        }
            // Check if the value is a string
        else if constexpr (std::is_same_v<std::decay_t<decltype(value)>, std::string>) {
            UE_LOG(LogTemp, Warning, TEXT("Error on canister get"));
        }
            // Handle any other types if needed
        else {
            UE_LOG(LogTemp, Warning, TEXT("Unknown type!"));
        }
    }, result);

    // on every frame change location for a smooth floating actor
    FVector NewLocation = GetActorLocation();
    float DeltaHeight = (FMath::Sin(RunningTime + DeltaTime) - FMath::Sin(RunningTime));
    NewLocation.X += DeltaHeight *  XValue;
    NewLocation.Y += DeltaHeight *  YValue;
    NewLocation.Z += DeltaHeight * jump;

    RunningTime += DeltaTime;
    SetActorLocation(NewLocation);
}

