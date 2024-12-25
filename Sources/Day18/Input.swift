let input = """
37,5
45,9
67,56
40,15
21,27
13,5
43,7
5,13
66,35
36,13
19,26
64,31
29,17
21,12
35,11
11,9
34,29
57,41
61,38
29,12
23,10
12,11
35,60
63,31
61,68
27,3
55,55
23,31
31,10
49,41
49,13
39,17
1,20
59,55
3,21
27,15
55,43
55,51
51,69
22,17
19,15
49,55
9,6
21,1
53,67
47,13
63,57
31,7
47,55
47,51
57,32
39,61
21,21
9,11
45,47
39,55
63,70
47,4
43,17
5,4
68,51
13,11
51,39
60,69
25,18
53,6
11,8
49,65
50,69
30,15
48,55
9,9
54,7
51,42
5,17
5,12
9,7
51,3
25,19
65,33
39,64
23,8
0,17
63,59
44,15
53,51
55,37
33,65
19,1
69,61
47,9
59,65
18,11
62,31
35,16
54,63
55,13
53,14
69,29
5,2
25,8
45,14
37,9
58,45
57,57
34,27
48,53
7,9
49,6
53,68
20,15
19,6
40,25
23,11
33,1
47,57
25,13
34,21
29,69
63,47
63,69
33,7
45,57
51,10
51,15
49,5
56,47
5,3
57,70
61,42
51,31
23,13
54,59
50,53
61,65
37,65
1,1
41,59
43,60
15,6
19,12
43,51
58,41
59,9
41,67
52,1
57,31
42,11
40,67
63,67
60,15
32,19
67,55
57,39
69,35
37,59
48,63
42,65
38,17
66,39
3,11
27,9
37,12
57,53
44,63
57,69
35,8
37,4
33,64
41,5
38,51
61,29
67,60
39,66
60,37
1,7
65,67
35,65
66,31
47,6
59,1
65,69
39,3
53,11
58,53
64,51
9,0
34,5
15,13
26,23
16,1
38,69
57,63
46,17
42,53
59,29
53,3
55,68
17,9
7,8
21,5
59,54
37,62
47,3
5,9
17,0
47,67
37,54
41,17
57,50
19,13
35,52
49,4
59,44
55,63
21,11
59,39
23,9
21,19
68,31
36,1
4,11
21,13
2,17
45,5
63,53
27,23
60,3
34,11
55,15
1,5
27,1
29,3
59,32
63,38
53,13
70,33
44,59
25,17
57,9
51,7
45,11
6,7
23,24
61,61
38,57
2,13
23,16
52,11
1,9
55,46
17,1
59,59
56,13
24,13
33,18
53,31
58,1
41,65
51,4
13,21
57,59
31,2
49,59
54,41
19,17
1,13
64,29
25,21
21,14
58,17
3,6
54,57
18,23
51,67
61,33
27,10
34,61
9,12
59,30
50,13
61,41
65,37
69,47
15,18
51,43
44,19
69,55
65,59
64,65
67,68
35,63
25,23
62,59
57,45
5,19
49,67
33,2
59,41
55,9
39,57
67,65
41,53
60,51
67,64
35,17
45,7
41,57
54,53
51,13
55,29
62,61
62,49
23,20
55,1
45,55
60,59
59,0
65,43
60,63
10,13
67,35
67,27
17,3
33,19
59,47
24,1
51,0
59,37
58,35
2,7
44,5
68,35
20,17
53,57
65,52
60,67
17,11
67,49
35,7
16,7
64,41
39,56
57,51
69,67
64,61
23,23
63,40
21,3
52,13
37,60
1,14
61,66
39,14
39,51
30,3
24,21
45,65
45,63
37,15
55,45
42,17
57,65
53,4
3,16
59,63
9,25
49,1
39,12
49,2
34,7
21,8
23,5
53,9
39,49
56,59
49,53
54,49
56,43
36,3
42,61
31,63
37,11
31,9
39,5
27,2
63,49
37,3
53,39
17,17
35,10
12,9
55,10
61,60
34,1
54,31
65,68
14,9
57,3
45,13
49,3
52,21
49,66
48,13
11,14
52,27
54,45
39,62
49,69
63,56
59,31
51,16
37,55
4,25
55,61
13,9
65,58
59,43
52,67
59,64
23,15
35,49
33,14
19,3
19,5
65,66
54,17
57,6
9,1
33,5
63,64
61,40
38,21
54,65
65,42
18,5
30,5
50,11
46,51
59,35
47,68
47,63
43,12
51,32
5,6
35,50
53,41
43,63
51,59
21,4
51,33
32,9
53,17
59,51
53,30
50,63
53,33
57,48
41,63
47,42
37,51
55,2
47,12
47,1
39,2
53,56
17,4
56,55
7,11
39,7
59,50
22,21
41,7
41,55
67,62
37,58
36,49
63,61
55,30
63,37
56,9
41,58
8,7
58,39
69,59
58,67
49,63
42,7
3,5
43,64
57,34
58,55
44,51
65,48
55,49
53,35
70,63
43,10
46,67
65,51
69,53
69,57
41,49
33,12
64,39
28,19
27,13
55,33
51,70
4,1
43,61
12,1
65,41
22,13
27,7
54,35
37,7
68,27
63,35
51,54
59,67
31,5
62,43
1,6
50,51
59,61
52,23
39,11
61,49
41,11
60,45
59,58
16,13
63,68
57,16
40,3
41,13
25,10
29,1
25,15
19,29
29,6
42,3
53,34
52,53
35,18
65,49
46,9
69,23
11,3
17,5
28,7
69,63
53,59
49,8
67,37
55,69
65,55
47,58
63,41
65,44
20,21
1,3
22,3
63,27
3,15
19,21
51,38
61,48
51,41
45,3
40,55
36,7
57,62
57,13
67,57
53,43
55,44
67,46
57,1
18,9
55,59
1,15
62,33
55,3
11,7
39,1
31,6
48,9
57,61
65,36
62,65
37,1
66,33
69,65
39,10
49,11
63,65
25,7
37,19
51,55
57,55
56,65
57,43
28,3
45,1
61,36
27,4
51,65
55,67
19,2
57,7
57,15
13,4
57,66
23,2
41,3
58,59
64,35
55,39
55,41
52,65
19,14
55,38
29,11
32,17
19,9
7,2
61,62
28,13
45,6
25,1
54,11
19,7
60,29
43,15
69,31
47,60
60,41
11,11
55,54
15,10
23,3
31,1
45,59
27,5
55,4
68,69
68,33
3,9
65,50
55,11
20,5
55,66
51,2
53,69
61,54
57,47
59,49
63,63
47,16
2,9
15,3
68,61
53,50
53,61
3,14
19,8
59,56
61,27
3,4
9,13
49,48
45,51
70,53
46,53
27,11
59,33
64,57
13,3
39,59
47,56
51,61
52,7
11,5
43,5
45,2
10,5
53,1
50,57
19,25
38,7
66,25
67,33
33,11
67,59
56,29
69,69
37,10
55,53
32,13
9,5
53,55
26,13
53,28
52,43
68,55
61,52
60,31
42,13
25,4
42,1
41,0
45,62
51,35
31,11
57,33
53,25
42,5
15,8
33,15
61,67
57,37
14,15
24,5
3,7
59,3
69,33
61,51
69,58
23,6
38,1
7,3
48,69
52,39
63,55
13,6
35,9
52,25
58,3
35,20
45,67
26,7
65,54
61,43
35,3
35,14
17,10
26,5
60,47
61,5
14,3
51,17
61,53
39,18
35,51
35,15
58,7
55,7
29,9
53,32
1,12
29,15
52,63
53,29
30,9
22,1
30,13
19,11
59,57
27,12
59,11
31,13
63,46
57,29
65,65
38,5
56,57
50,41
9,10
25,11
29,0
11,2
23,19
57,35
43,13
39,6
51,5
50,61
61,55
57,49
58,13
35,5
64,47
58,61
65,62
47,2
5,5
43,66
63,34
28,9
59,12
64,45
33,3
52,59
39,63
25,9
45,8
62,35
67,53
33,4
3,3
46,13
39,13
66,57
2,3
39,65
56,5
35,1
3,1
50,7
22,9
49,35
53,60
41,60
48,65
70,59
45,17
58,29
43,3
49,61
53,42
57,42
17,13
40,53
47,7
35,53
65,31
59,4
57,52
24,15
63,54
61,63
37,53
13,2
16,3
53,65
47,53
21,9
53,8
53,15
55,31
15,11
46,65
56,61
23,1
53,53
37,61
21,22
21,17
1,0
23,7
25,16
9,17
63,51
67,31
68,53
41,4
40,59
51,29
53,48
15,1
20,1
51,9
55,50
21,29
48,51
41,50
55,35
55,36
47,61
40,63
60,35
43,1
56,15
37,17
61,31
21,23
46,3
38,15
52,57
44,11
53,5
41,9
35,61
1,2
21,7
55,70
47,43
67,63
65,29
61,39
6,9
40,17
12,5
33,9
21,15
51,1
57,64
43,67
52,17
69,66
5,1
67,69
49,9
50,67
54,13
39,53
55,5
49,16
67,67
45,54
41,15
31,3
32,3
7,5
68,29
51,57
56,27
41,68
25,3
59,53
65,63
39,52
49,7
55,40
32,7
40,9
54,1
46,61
8,1
57,38
41,1
69,68
37,63
47,5
45,45
66,63
53,52
11,1
34,23
41,61
37,13
49,58
51,11
49,60
39,50
39,15
55,57
53,27
29,19
1,17
57,67
62,45
59,69
59,5
63,33
4,9
47,10
10,3
43,16
29,7
57,5
61,69
61,45
47,59
63,43
39,9
58,47
59,7
57,8
38,61
45,58
49,56
9,3
43,8
45,56
1,10
47,11
61,47
7,4
29,5
52,49
13,7
44,1
12,13
57,36
31,16
44,67
69,27
51,63
35,19
67,58
41,14
62,51
45,61
51,27
13,1
47,47
42,63
43,65
39,8
67,38
1,11
56,33
17,14
53,62
39,19
47,64
36,17
43,9
65,32
62,57
66,53
27,14
31,60
2,37
11,53
9,43
19,44
9,53
17,29
41,31
25,61
19,19
45,24
3,63
13,43
29,21
7,39
25,22
29,31
45,39
1,39
29,53
17,35
41,20
29,29
39,41
7,60
31,17
58,9
63,12
10,9
55,26
39,39
24,39
9,59
14,57
11,50
25,66
29,52
4,65
51,37
23,56
20,55
27,65
12,35
58,27
23,61
47,35
31,49
66,19
69,41
51,30
0,47
37,47
61,7
9,38
37,33
31,23
17,43
35,48
12,25
33,24
65,3
59,19
23,21
7,33
23,65
21,70
39,47
42,25
67,11
65,23
26,43
11,17
9,65
29,61
19,57
65,45
14,55
4,43
45,21
17,42
7,23
13,19
48,19
34,45
31,37
64,13
9,20
21,49
13,17
5,50
25,31
43,21
37,23
33,41
7,37
67,42
27,59
11,48
64,5
45,20
16,41
11,29
3,39
37,36
47,28
13,15
35,40
35,23
23,44
22,67
11,18
9,37
59,15
17,21
21,67
3,53
36,37
15,17
27,37
6,21
11,41
28,23
2,23
29,65
13,51
3,28
5,61
3,41
20,47
17,23
43,56
31,41
51,18
4,69
17,20
23,30
21,53
23,27
45,33
3,57
39,48
6,55
51,49
33,44
65,1
37,39
32,49
67,3
37,69
51,19
19,36
39,42
24,37
15,51
35,45
49,57
6,59
1,59
13,35
11,27
29,70
17,45
23,37
8,51
8,29
43,31
61,18
47,38
63,8
25,54
63,17
20,53
40,37
63,3
17,25
13,69
34,41
7,65
2,49
5,57
31,32
65,25
40,41
37,43
31,24
27,38
31,67
69,39
6,47
16,49
67,7
25,35
14,59
45,31
42,57
63,11
7,7
19,65
61,3
63,25
5,51
59,17
32,57
32,55
19,53
41,22
12,55
23,32
47,21
40,45
70,21
23,36
33,55
47,17
30,59
65,27
23,35
10,65
28,55
15,49
63,15
7,41
11,61
33,62
7,54
70,19
33,49
15,33
13,65
31,51
13,28
29,48
41,41
19,64
37,44
30,51
39,43
50,29
27,60
49,39
13,47
32,69
49,17
61,19
50,35
19,56
43,42
25,36
11,31
7,17
26,65
56,11
59,20
41,29
27,55
41,21
25,69
5,31
48,21
17,51
36,27
7,27
26,31
41,19
13,44
34,69
16,25
26,25
63,7
60,23
31,35
64,1
44,29
30,55
9,35
35,31
61,59
19,55
67,17
68,17
33,53
12,65
29,49
39,33
5,49
8,41
27,47
45,44
29,62
28,25
61,15
69,21
23,47
43,53
7,57
25,25
36,69
4,29
22,43
63,26
67,12
61,26
11,65
27,19
14,65
15,50
11,67
29,42
23,69
31,59
38,33
13,67
18,39
9,34
35,55
29,23
11,63
12,51
43,30
3,37
10,67
63,5
3,61
33,21
67,44
20,19
19,59
49,46
10,55
21,37
69,9
17,63
4,33
65,2
17,54
32,59
27,69
11,35
11,62
37,46
25,59
14,25
15,39
5,15
19,61
69,17
9,60
0,53
3,68
5,21
60,11
7,55
45,28
36,23
13,48
2,47
15,40
31,68
69,11
8,27
61,1
8,45
13,22
53,37
9,46
60,5
44,37
49,38
67,1
15,43
27,70
16,35
12,53
5,30
11,58
9,32
19,66
7,22
51,23
2,25
29,33
49,22
23,41
27,50
28,53
22,65
24,43
50,47
57,21
30,65
39,21
32,51
21,43
29,27
29,36
19,45
17,64
39,31
19,32
43,57
61,23
13,60
15,7
55,19
9,41
15,46
37,20
67,13
53,63
43,41
33,59
39,38
67,25
61,35
11,23
13,49
35,47
17,68
22,27
49,18
41,39
50,21
3,45
39,23
43,25
60,25
31,69
25,34
43,54
13,25
17,48
1,41
29,67
42,45
48,35
11,21
37,49
11,42
55,21
39,30
43,49
69,45
12,61
49,27
68,19
35,37
35,58
45,26
31,53
69,24
19,42
3,60
6,43
47,69
67,51
17,67
16,21
39,67
9,58
9,62
1,21
33,23
45,23
17,31
15,55
65,4
43,69
51,26
46,23
31,33
63,45
17,52
20,43
30,57
35,13
9,22
6,25
10,21
24,45
19,43
15,59
15,30
2,45
59,23
3,62
59,25
39,40
63,24
22,59
7,15
17,24
3,59
21,48
70,1
19,39
29,57
15,48
3,26
47,33
35,39
61,2
13,20
61,12
33,43
21,47
57,25
69,14
31,61
8,49
13,34
15,61
29,59
6,17
61,13
57,19
42,35
49,49
30,21
5,40
5,37
15,47
60,17
1,55
37,25
15,23
25,41
69,5
6,67
13,63
5,45
1,49
17,28
65,17
59,21
25,51
32,67
25,37
49,45
29,55
7,43
37,35
43,35
9,31
7,61
37,21
27,64
47,49
25,53
1,19
55,24
7,21
67,10
21,41
24,63
47,65
57,22
1,53
33,33
69,49
65,15
5,53
41,43
41,28
3,35
15,9
36,65
1,27
21,63
17,41
6,49
54,23
55,23
43,33
33,34
61,57
60,9
5,67
16,37
28,59
69,1
67,43
69,51
25,39
16,61
23,68
1,38
32,63
41,23
17,53
67,48
23,54
41,25
67,6
21,52
29,51
9,21
64,17
22,51
30,35
12,57
67,40
13,13
10,61
45,22
68,25
60,21
13,59
23,51
57,17
31,39
21,50
37,27
23,53
27,29
39,37
47,41
63,23
45,15
33,37
18,35
29,68
35,34
19,69
12,39
1,25
31,31
27,68
61,37
49,32
46,47
63,19
0,31
53,19
29,25
65,20
15,16
68,23
5,54
61,17
8,25
5,69
2,41
31,27
9,15
66,29
55,65
33,45
49,43
49,21
3,65
43,39
33,17
11,19
46,39
42,39
5,62
45,27
33,52
47,39
22,47
63,4
3,51
48,25
20,65
16,31
38,67
16,69
13,39
70,49
3,31
65,5
33,63
61,21
11,38
6,45
35,67
29,40
45,49
65,22
63,10
51,21
28,57
17,37
15,15
21,46
67,45
8,17
21,51
35,44
11,37
5,42
20,37
19,58
36,63
27,33
8,37
35,21
27,34
3,49
65,7
53,21
23,43
62,1
11,22
68,3
70,7
35,57
66,7
47,50
26,41
43,29
5,63
15,32
10,17
69,12
25,58
0,27
53,49
27,28
23,55
24,25
63,1
3,29
13,55
51,53
9,30
27,46
18,49
20,59
15,22
37,37
18,67
15,27
23,39
42,51
62,15
15,57
66,15
67,29
65,53
9,57
37,67
19,30
21,25
29,13
9,54
11,57
9,39
59,27
27,63
11,25
43,38
45,48
69,37
17,65
32,29
26,55
27,62
23,66
31,15
25,33
47,26
30,27
8,65
3,33
21,24
5,41
15,62
15,63
49,28
61,25
14,33
1,70
17,39
33,50
9,27
2,19
42,31
3,58
39,36
3,13
62,9
19,50
68,5
7,42
13,18
27,27
43,43
7,14
5,36
24,57
47,31
10,29
19,35
11,15
47,45
2,29
65,19
47,30
31,25
68,7
17,33
5,65
19,67
13,12
25,47
35,30
61,14
21,69
39,24
43,24
45,41
55,18
15,37
61,9
47,44
17,60
21,62
59,45
68,47
9,23
43,27
29,47
16,17
25,60
43,19
13,23
6,51
4,47
20,29
40,27
17,57
56,23
21,18
43,40
66,13
69,25
22,41
22,61
23,57
11,13
32,31
2,55
37,22
46,35
68,15
9,44
13,52
41,48
7,59
15,5
65,39
53,45
9,67
51,36
29,26
5,25
25,67
31,47
31,54
6,31
11,70
32,39
15,12
49,29
13,31
35,29
7,58
9,68
7,19
44,41
13,68
43,22
23,17
3,25
15,34
47,20
37,48
65,11
39,28
27,43
51,47
42,19
21,38
11,59
45,29
31,55
67,41
31,45
45,35
19,37
1,37
27,32
43,36
11,24
6,57
3,56
49,14
59,13
7,25
69,42
26,17
45,19
49,51
7,31
27,25
27,31
32,27
55,47
17,69
22,57
13,40
7,32
13,57
20,25
31,43
68,9
22,39
35,68
66,11
35,25
7,49
17,16
45,25
43,48
8,15
29,45
35,59
19,23
1,64
63,21
49,25
35,66
9,61
41,34
9,47
21,40
33,46
32,41
28,39
5,27
19,40
29,16
7,64
67,50
15,65
9,56
14,23
65,9
17,61
24,41
29,20
67,9
42,43
3,23
25,45
47,23
20,61
39,45
4,53
7,10
55,16
41,45
32,35
10,41
39,69
1,22
64,15
19,33
11,47
0,35
63,28
41,47
17,47
19,51
38,25
47,27
11,45
67,47
4,45
27,52
41,27
41,44
1,23
69,15
7,66
9,19
5,11
25,48
13,29
4,63
69,19
25,29
1,61
34,57
65,57
33,13
25,68
11,64
33,57
61,11
39,29
13,33
63,22
5,18
37,57
3,19
7,69
17,49
41,37
39,25
11,32
53,20
49,33
44,33
12,37
33,67
5,23
69,16
9,63
70,39
69,40
5,33
17,58
27,57
5,39
39,35
12,19
34,31
34,65
33,69
49,31
9,36
16,67
4,49
32,21
11,69
31,19
10,27
69,3
14,63
7,47
49,19
3,67
13,27
13,46
2,51
57,27
68,37
26,21
40,33
2,39
2,53
15,69
63,6
63,13
54,21
23,67
57,20
19,47
64,19
43,11
43,70
69,13
49,15
27,21
35,38
31,42
31,22
58,25
19,41
23,60
65,8
29,64
29,34
41,33
49,23
5,59
23,33
21,59
23,49
21,35
15,38
1,62
52,45
67,19
13,41
31,21
8,69
1,43
25,52
62,19
1,67
15,31
5,34
30,29
29,30
25,63
12,27
27,45
9,29
55,27
29,44
21,34
53,38
63,9
4,57
29,46
4,21
43,37
8,19
49,47
7,34
25,65
23,59
13,61
33,26
37,26
1,31
3,52
18,21
37,29
1,33
41,51
6,63
41,35
7,29
3,17
18,17
7,67
63,39
1,57
47,37
37,41
14,37
53,23
36,33
25,5
24,29
12,31
5,68
41,69
24,27
56,19
23,25
69,44
35,33
7,1
36,41
5,16
9,40
11,49
49,24
15,52
3,32
37,45
1,66
61,28
4,23
11,51
25,57
11,43
47,25
11,39
30,39
66,3
3,69
23,64
13,30
49,37
33,47
47,46
29,63
39,46
17,7
4,39
63,29
33,61
45,37
29,43
48,41
70,27
68,1
9,45
1,51
2,65
30,37
27,39
18,53
19,27
15,21
69,7
45,43
27,51
35,54
36,25
12,45
28,31
21,65
37,31
24,47
23,26
19,63
30,45
32,37
25,55
13,37
67,39
44,69
3,55
31,65
44,49
1,60
18,33
27,17
67,61
8,47
21,33
45,36
17,46
14,43
43,59
67,21
47,15
35,43
38,55
67,22
15,41
9,55
3,43
48,37
37,28
27,53
53,7
25,62
39,27
29,39
69,43
1,68
35,36
1,44
16,63
17,59
27,36
1,58
7,53
21,61
47,29
67,15
33,51
1,69
33,25
27,41
10,45
27,61
20,69
51,51
62,21
29,66
23,50
38,43
29,41
43,45
26,57
21,31
36,53
25,43
25,50
15,54
7,63
43,32
9,52
21,45
7,35
65,61
45,53
15,19
45,34
29,37
21,55
67,66
65,26
35,69
18,29
46,31
9,33
33,29
15,29
31,48
50,45
9,51
30,23
32,43
57,11
31,46
29,35
7,12
42,27
15,67
50,25
13,53
53,47
5,35
24,31
35,27
55,25
6,23
26,45
57,23
11,16
61,6
10,35
7,51
25,27
26,27
40,21
14,27
20,33
1,45
38,35
67,23
2,31
5,47
26,39
65,21
21,57
5,14
19,49
35,35
55,17
10,49
17,27
21,39
33,31
43,23
43,55
1,47
25,49
45,46
16,43
11,33
48,49
22,31
16,57
15,45
18,61
65,13
2,35
15,35
51,25
47,32
1,65
47,19
17,55
47,40
65,35
3,47
17,19
17,56
23,45
30,61
27,67
1,42
33,27
15,25
34,55
1,35
7,45
43,47
22,35
51,45
7,13
38,39
34,33
27,35
33,39
14,69
65,28
49,44
66,17
27,48
5,29
1,29
17,26
31,57
9,49
18,45
9,69
1,34
23,29
15,53
21,28
5,20
5,55
5,43
38,31
27,49
51,34
45,69
45,18
11,68
6,37
7,38
11,55
23,63
36,31
5,7
5,28
49,30
13,45
17,15
28,17
58,21
35,41
59,24
1,63
65,47
9,24
31,29
15,66
6,27
67,5
33,35
19,31
3,27
48,56
44,55
28,66
11,44
44,20
30,67
54,48
18,48
16,70
65,6
22,60
56,52
42,21
46,1
68,42
12,4
58,40
68,4
16,64
22,55
48,2
66,60
55,14
26,19
27,56
54,12
28,0
22,2
15,0
33,36
20,18
33,38
24,62
48,66
41,32
0,41
66,16
6,22
20,31
37,34
1,54
38,63
30,8
7,28
36,35
35,28
42,60
8,59
23,42
18,10
6,64
54,14
64,68
46,62
2,56
3,34
46,4
64,62
42,52
9,66
69,70
36,30
29,22
12,2
52,61
26,20
20,63
56,28
34,34
4,56
16,16
3,22
2,64
7,56
16,30
14,26
18,51
7,68
64,66
27,0
6,29
20,54
17,62
44,53
62,58
22,45
42,58
64,40
56,54
58,14
52,55
13,38
12,68
10,54
43,62
38,36
2,40
8,67
12,59
60,4
23,40
4,61
66,62
44,70
46,58
54,20
48,68
64,6
14,47
70,31
42,37
10,30
4,59
20,39
14,42
28,58
33,8
67,18
36,59
16,34
20,52
62,20
59,62
22,52
34,28
14,51
28,46
54,9
5,58
48,12
20,45
22,30
40,43
59,8
32,0
15,20
2,38
40,61
54,46
35,46
37,40
12,30
32,52
42,66
0,63
8,50
28,22
62,7
40,11
50,32
48,38
46,64
42,2
33,48
36,45
38,41
30,19
26,60
14,68
28,28
67,24
36,32
70,44
21,60
12,56
32,64
70,51
64,25
52,20
50,9
46,45
2,68
22,7
19,68
34,70
30,69
1,56
50,66
40,31
68,12
16,60
66,30
44,56
62,69
56,10
17,30
20,32
62,29
34,47
40,10
3,30
68,16
16,44
14,44
54,68
27,8
37,24
67,26
4,55
40,58
26,12
24,40
25,20
32,12
70,46
40,51
54,18
2,27
50,17
10,11
70,57
68,21
55,62
14,45
32,8
52,48
2,16
38,58
13,10
48,67
10,23
58,12
34,39
62,70
65,30
59,68
64,9
5,26
41,64
0,48
30,11
6,66
26,3
52,24
39,44
22,63
28,34
36,34
47,66
20,57
6,58
18,56
66,4
28,49
37,68
28,12
50,65
68,41
40,64
29,28
28,11
42,69
24,36
1,4
57,14
34,40
64,30
37,6
63,14
42,42
31,8
8,54
22,53
61,70
29,8
66,46
50,20
69,32
18,68
33,58
39,68
69,4
28,62
15,44
40,32
31,38
34,67
4,36
53,54
56,68
44,60
43,44
28,32
42,64
50,46
51,62
29,58
28,44
29,18
40,8
59,60
2,67
2,44
16,45
40,14
18,62
26,33
38,24
10,52
4,64
11,66
52,8
60,30
22,29
40,69
31,44
19,10
14,21
14,20
68,28
28,33
45,52
16,33
30,58
0,54
51,12
52,12
5,52
24,19
6,54
36,36
32,46
61,8
2,48
19,60
6,50
46,6
24,48
13,32
25,64
4,35
32,65
16,14
2,36
68,10
51,22
24,46
21,56
56,70
70,18
23,62
27,18
51,52
32,34
50,48
34,35
14,58
50,24
42,9
31,64
52,54
62,27
69,18
31,52
50,68
62,66
14,49
50,5
54,3
5,60
25,56
62,26
68,20
70,58
37,50
54,69
62,3
18,52
10,47
38,66
8,66
45,64
11,34
2,66
13,36
70,12
2,50
58,57
55,22
3,64
36,28
14,70
15,28
12,15
40,47
33,68
4,37
6,40
70,45
0,34
52,5
9,50
56,8
31,58
44,24
56,21
38,50
24,49
60,38
52,22
42,12
49,12
52,50
12,66
13,50
57,54
34,32
44,26
44,34
14,66
17,36
33,54
21,66
28,38
48,62
42,67
46,56
41,70
43,34
12,18
29,54
12,10
29,32
17,44
66,32
50,33
19,48
59,18
52,28
60,52
24,4
28,61
12,12
10,15
22,38
20,3
57,58
26,66
26,29
1,40
14,28
32,61
0,23
44,68
10,64
62,64
50,36
24,35
55,28
6,39
52,70
3,2
55,20
53,58
62,2
59,36
18,59
52,15
6,12
63,62
7,44
56,51
65,16
3,44
33,20
22,20
28,30
21,44
58,30
4,60
26,24
24,56
32,11
65,60
28,24
19,70
60,28
32,18
42,28
8,43
30,70
64,4
12,32
16,11
56,67
59,34
10,59
59,66
16,50
54,34
14,48
4,12
35,70
6,5
51,68
46,42
18,28
70,42
69,30
56,69
52,19
22,6
5,24
66,26
13,14
40,48
32,60
44,44
35,42
36,9
34,0
12,41
42,44
68,70
63,18
4,41
27,58
32,32
38,47
36,15
68,63
56,45
15,36
19,62
46,63
12,40
70,2
52,40
7,62
62,12
34,53
25,70
40,4
38,60
30,18
18,4
22,49
14,2
30,40
30,53
68,58
26,58
10,14
8,52
62,54
20,24
13,64
67,4
55,12
56,31
8,6
4,22
3,48
56,64
6,3
64,32
67,36
22,58
64,12
63,2
50,38
2,60
20,13
55,58
3,50
40,68
10,0
61,4
42,38
4,48
22,32
70,47
9,4
7,52
23,52
24,11
3,42
10,10
58,16
20,7
38,19
38,14
34,15
50,50
53,22
38,68
37,16
47,70
27,20
25,30
8,57
34,37
65,34
8,5
35,2
30,7
56,24
2,1
24,8
40,5
41,6
18,1
3,18
34,24
12,14
30,64
17,70
31,56
24,28
56,40
44,40
38,29
0,22
2,70
43,26
18,44
40,50
27,44
70,35
60,46
41,54
2,63
26,69
20,49
59,38
26,67
2,26
6,32
54,2
46,22
37,18
51,28
40,40
30,2
18,14
60,32
18,47
19,46
58,37
12,50
36,55
62,25
5,22
35,64
42,29
46,48
50,4
24,59
70,15
50,1
37,2
26,52
3,12
32,16
64,10
70,0
47,48
41,12
19,18
6,69
50,49
66,2
55,34
16,58
62,42
64,0
35,12
44,23
67,54
47,22
6,13
22,14
55,48
62,46
24,54
20,35
36,22
2,2
51,6
0,43
39,54
18,34
59,70
44,65
14,11
16,51
11,28
54,70
59,16
18,66
15,58
16,66
54,28
64,8
32,28
44,6
60,34
22,42
0,62
52,14
0,25
52,30
17,32
8,21
56,30
4,19
42,18
67,34
34,63
54,37
54,51
25,42
18,0
42,6
54,36
42,41
12,29
40,30
30,1
61,10
0,14
34,12
66,22
14,67
4,42
22,68
68,2
48,20
68,66
65,12
5,44
63,48
12,8
70,9
2,69
43,20
56,41
19,22
34,54
48,4
12,34
31,28
24,23
9,14
64,20
59,52
45,60
52,68
69,20
70,37
40,54
2,4
38,28
42,22
1,36
0,21
16,23
56,34
44,46
22,54
44,39
35,4
64,11
24,61
34,30
49,34
48,34
58,64
6,30
50,22
46,33
32,26
14,38
32,5
34,43
52,6
41,18
6,52
5,32
40,38
49,62
61,20
7,24
8,16
26,22
14,5
51,40
60,8
34,44
34,56
4,31
38,10
30,16
20,64
5,38
37,64
12,43
12,42
6,28
63,16
56,39
16,0
70,50
4,18
4,62
48,59
8,40
32,58
2,24
58,33
4,10
41,10
32,22
26,68
68,65
62,13
48,28
57,56
6,33
58,50
46,26
46,40
36,4
16,47
26,28
61,58
23,4
52,32
64,23
54,55
60,62
70,13
38,20
28,18
67,2
24,66
66,23
17,40
7,36
6,70
40,65
59,46
34,16
42,40
28,2
60,36
34,51
2,61
66,52
14,22
49,54
8,20
46,41
46,37
22,23
70,36
29,2
58,46
47,14
54,43
50,2
24,52
41,52
18,22
0,15
24,14
10,53
70,10
6,19
41,46
33,40
11,46
58,20
44,2
37,8
57,44
56,60
11,10
4,14
38,32
17,50
53,46
44,10
37,52
68,44
44,38
69,64
44,7
36,57
18,40
67,28
46,11
48,57
56,62
49,0
62,40
44,58
46,28
54,27
0,16
70,3
34,62
61,22
6,38
58,48
52,56
45,4
41,30
14,40
40,56
9,42
26,0
21,26
28,70
60,61
30,62
26,30
30,47
32,14
66,18
46,16
33,28
61,34
20,56
62,17
46,54
28,52
10,39
3,0
30,48
48,42
44,45
46,7
48,52
44,12
20,6
43,6
46,34
64,69
70,29
64,52
38,11
38,62
6,62
17,18
10,60
12,62
56,63
14,29
57,24
30,6
41,56
31,0
31,66
16,26
34,13
8,26
30,25
38,26
28,29
53,44
20,66
56,12
34,25
2,10
58,8
25,46
68,57
3,10
48,27
53,16
60,68
12,64
36,52
66,12
44,31
16,56
33,60
13,58
24,60
4,34
65,24
69,46
14,17
62,60
44,32
28,54
36,67
20,26
25,0
35,62
70,23
67,0
15,4
58,23
50,19
66,38
66,66
5,48
65,46
"""

let testInput = """
5,4
4,2
4,5
3,0
2,1
6,3
2,4
1,5
0,6
3,3
2,6
5,1
1,2
5,5
2,5
6,5
1,4
0,4
6,4
1,1
6,1
1,0
0,5
1,6
2,0
"""
