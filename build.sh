#!/usr/bin/env bash
set -e

dotnet restore src/Giraffe
dotnet build src/Giraffe

dotnet restore tests/Giraffe.Tests
dotnet build tests/Giraffe.Tests
dotnet test tests/Giraffe.Tests/Giraffe.Tests.fsproj

dotnet restore samples/SampleApp/SampleApp
dotnet build samples/SampleApp/SampleApp

dotnet restore samples/SampleApp/SampleApp.Tests
dotnet build samples/SampleApp/SampleApp.Tests
dotnet test samples/SampleApp/SampleApp.Tests/SampleApp.Tests.fsproj

dotnet pack src/Giraffe -c Release
