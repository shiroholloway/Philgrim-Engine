-- philgrim_debug.lua

-- Here for experimentation.
debug = {}

function debug.createDebugMap()
	-- Raw map data.
	local foregroundRaw = { 141, 141, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 186, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 188, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 188, 141, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 186, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 188, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 141, 141, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 186, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 188, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 141, 141, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 186, 187, 187, 234, 203, 203, 203, 203, 203, 203, 203, 203, 203, 203, 235, 187, 187, 187, 187, 187, 187, 187, 188, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 141, 141, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 186, 187, 187, 188, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 186, 187, 187, 187, 187, 187, 187, 187, 188, 139, 139, 139, 140, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 138, 139, 139, 139, 141, 141, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 186, 187, 187, 188, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 186, 187, 187, 187, 187, 187, 187, 187, 188, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 141, 141, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 186, 187, 187, 188, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 202, 203, 203, 203, 203, 203, 203, 203, 204, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 141, 141, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 202, 203, 203, 204, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 141, 141, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 141, 141, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 141, 141, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 141, 141, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 141, 141, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 141, 141, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 170, 171, 171, 171, 171, 171, 171, 171, 171, 171, 172, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 141, 141, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 208, 203, 203, 203, 203, 235, 187, 187, 187, 187, 188, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 145, 149, 150, 151, 147, nil, nil, nil, nil, nil, nil, nil, nil, nil, 141, 141, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 145, 149, 150, 151, 146, 146, 146, 146, 146, 149, 150, 151, 146, 146, 146, 146, 146, 147, 186, 187, 187, 187, 187, 250, 171, 171, 172, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 141, 164, 165, 166, 167, 168, 141, nil, nil, nil, nil, nil, nil, nil, nil, 141, 141, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 141, nil, 165, 166, 167, nil, nil, nil, nil, nil, 165, 166, 167, nil, nil, nil, nil, nil, nil, 186, 187, 187, 187, 187, 187, 187, 187, 188, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 180, 181, 182, 183, 184, nil, nil, nil, nil, nil, nil, nil, nil, nil, 141, 141, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 181, 182, 183, nil, nil, nil, nil, nil, 181, 182, 183, nil, nil, nil, nil, nil, nil, 186, 187, 187, 187, 187, 187, 187, 187, 250, 171, 171, 172, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 141, nil, nil, 196, 197, 198, 199, 200, nil, nil, 141, nil, nil, nil, nil, nil, nil, 141, 141, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 141, nil, nil, nil, 197, 198, 199, nil, nil, nil, nil, nil, 197, 198, 199, nil, nil, nil, nil, nil, nil, 186, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 188, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 212, 213, 214, 215, 216, nil, nil, nil, nil, nil, nil, nil, nil, nil, 141, 141, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 213, 214, 215, nil, nil, nil, nil, nil, 213, 214, 215, nil, nil, nil, nil, nil, nil, 186, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 250, 171, 171, 188, nil, nil, nil, nil, nil, nil, 141, nil, nil, nil, nil, 228, 229, 230, 231, 232, nil, nil, nil, nil, 141, nil, nil, nil, nil, 141, 141, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 141, nil, nil, nil, nil, nil, 229, 230, 231, nil, nil, nil, nil, nil, 229, 230, 231, nil, nil, nil, nil, nil, nil, 186, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 188, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 244, 245, 246, 247, 248, nil, nil, nil, nil, nil, nil, nil, nil, nil, 141, 141, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 245, 246, 247, nil, nil, nil, nil, nil, 245, 246, 247, nil, nil, nil, nil, nil, nil, 186, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 188, 145, 146, 149, 150, 151, 146, 146, 146, 146, 146, 149, 150, 151, 146, 146, 146, 146, 146, 149, 150, 151, 146, 146, 146, 147, 141, 145, 149, 150, 151, 146, 146, 146, 146, 146, 149, 150, 151, 146, 146, 146, 146, 146, 149, 150, 151, 146, 146, 146, 146, 146, 149, 150, 151, 146, 146, 146, 146, 146, 149, 150, 151, 147, 186, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 188, nil, 164, 165, 166, 167, 168, nil, nil, nil, 164, 165, 166, 167, 168, nil, nil, nil, 164, 165, 166, 167, 168, nil, nil, nil, 141, 164, 165, 166, 167, 168, nil, nil, nil, 164, 165, 166, 167, 168, nil, nil, nil, 164, 165, 166, 167, 168, nil, nil, nil, 164, 165, 166, 167, 168, nil, nil, nil, nil, 165, 166, 167, nil, 186, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 188, nil, 180, 181, 182, 183, 184, nil, nil, nil, 180, 181, 182, 183, 184, nil, nil, nil, 180, 181, 182, 183, 184, nil, nil, nil, 141, 180, 181, 182, 183, 184, nil, nil, nil, 180, 181, 182, 183, 184, nil, nil, nil, 180, 181, 182, 183, 184, nil, nil, nil, 180, 181, 182, 183, 184, nil, nil, nil, nil, 181, 182, 183, nil, 186, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 188, nil, 196, 197, 198, 199, 200, nil, nil, nil, 196, 197, 198, 199, 200, nil, nil, nil, 196, 197, 198, 199, 200, nil, nil, nil, 141, 196, 197, 198, 199, 200, nil, nil, nil, 196, 197, 198, 199, 200, nil, nil, nil, 196, 197, 198, 199, 200, nil, nil, nil, 196, 197, 198, 199, 200, nil, nil, nil, nil, 197, 198, 199, nil, 186, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 188, nil, 212, 213, 214, 215, 216, nil, nil, nil, 212, 213, 214, 215, 216, nil, nil, nil, 212, 213, 214, 215, 216, nil, nil, nil, 141, 212, 213, 214, 215, 216, nil, nil, nil, 212, 213, 214, 215, 216, nil, nil, nil, 212, 213, 214, 215, 216, nil, nil, nil, 212, 213, 214, 215, 216, nil, nil, nil, nil, 213, 214, 215, nil, 186, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 188, nil, 228, 229, 230, 231, 232, nil, nil, nil, 228, 229, 230, 231, 232, nil, nil, nil, 228, 229, 230, 231, 232, nil, nil, nil, 141, 228, 229, 230, 231, 232, nil, nil, nil, 228, 229, 230, 231, 232, nil, nil, nil, 228, 229, 230, 231, 232, nil, nil, nil, 228, 229, 230, 231, 232, nil, nil, nil, nil, 229, 230, 231, nil, 186, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 187, 188, nil, 244, 245, 246, 247, 248, nil, nil, nil, 244, 245, 246, 247, 248, nil, nil, nil, 244, 245, 246, 247, 248, nil, nil, nil, 141 }
	local backgroundRaw = { 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 1, 1, 1, 1, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 1, 1, 1, 1, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 1, 1, 1, 1, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 1, 2, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 17, 18, 19, 20, 21, 22, 23, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 33, 34, 35, 36, 37, 38, 39, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 49, 50, 51, 52, 53, 54, 55, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 65, 66, 67, 68, 69, 70, 71, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 81, 82, 83, 84, 85, 86, 87, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109, 109 }
	local moonRaw = { nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 97, 98, 99, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 113, 114, 115, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 129, 130, 131, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 100, nil, 102, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 100, 101, 102, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 116, 117, 118, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 132, 133, 134, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 103, 104, 105, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 119, 120, 121, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 135, 136, 137, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 106, 107, 108, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil }

	-- Holds our map objects.
	local maps = {}

	print("Creating debug maps...")
	-- Create map objects.
	maps[1] = Map:new(39, 28, 1, 0.25, 0.25, backgroundRaw)
	maps[2] = Map:new(25, 28, 2, 0, 0.25, moonRaw)
	maps[3] = Map:new(78, 28, 3, 1, 1, foregroundRaw)

	-- Load the tilesets for each one.
	maps[1]:loadTiles("Graphics/Tileset.png", 16)
	maps[2]:loadTiles("Graphics/Tileset.png", 16)
	maps[3]:loadTiles("Graphics/Tileset.png", 16)

	-- Give our maps array to our game table.
	game.maps = maps
	game.foregroundMap = game.maps[3]	-- FIXME: Hack.
end

function debug.createTestEntity()
	print("Creating debug player entity...")
	debug.testEntity = Player:new(64, 64, 32, 32, game.foregroundMap)
end
