// swift-tools-version:5.5
import PackageDescription

let package = Package(
	name: "AOC22",
	products: [
		.executable(name: "AOC22", targets: ["AOC22"]),
	],
	dependencies: [],
	targets: [
		.executableTarget(
			name: "AOC22", 
			dependencies: [], 
			path: "Sources/AOC22", 
			exclude: [
				"Day 1/Resources/input.txt",
				"Day 1/Resources/test.txt",
				"Day 2/Resources/input.txt",
				"Day 2/Resources/test.txt",
			])
	]
)