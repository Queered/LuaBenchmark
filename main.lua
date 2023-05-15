local iterations = 1000000

-- test 1: Math operations
local start_time = os.clock()
for i=1,iterations do
    local a = math.sqrt(i)
    local b = math.sin(i)
    local c = math.cos(i)
end
local end_time = os.clock()
local time_elapsed = end_time - start_time
print("Math operations: " .. time_elapsed)

-- test 2: Table operations
local tbl = {}
for i=1,iterations do
    tbl[i] = i
end
start_time = os.clock()
for i=1,iterations do
    local a = tbl[i]
end
end_time = os.clock()
time_elapsed = end_time - start_time
print("Table operations: " .. time_elapsed)

-- test 3: String operations
local str1 = "Hello"
local str2 = "World"
start_time = os.clock()
for i=1,iterations do
    local str3 = str1 .. " " .. str2
    local str4 = string.upper(str3)
end
end_time = os.clock()
time_elapsed = end_time - start_time
print("String operations: " .. time_elapsed)

-- test 4: Function calls
local function test_func(a, b, c)
    local d = a + b + c
    return d
end
start_time = os.clock()
for i=1,iterations do
    local result = test_func(i, i+1, i+2)
end
end_time = os.clock()
time_elapsed = end_time - start_time
print("Function calls: " .. time_elapsed)
