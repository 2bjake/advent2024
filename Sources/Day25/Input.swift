let input = """
.....
#...#
#...#
##..#
##..#
###.#
#####

.....
.....
#..#.
#..##
#.###
#####
#####

.....
.....
.#.#.
####.
#####
#####
#####

.....
....#
...##
..###
.####
#####
#####

.....
....#
....#
..#.#
.##.#
.####
#####

#####
#####
#####
####.
##.#.
#..#.
.....

#####
#####
#.###
#..##
#..##
....#
.....

.....
#....
#....
##...
##...
###.#
#####

.....
#.#.#
#.###
#####
#####
#####
#####

.....
.....
..#..
#.#..
#.#..
####.
#####

.....
...#.
.#.#.
.#.#.
.#.#.
.####
#####

#####
####.
.###.
..##.
...#.
.....
.....

.....
#.#..
#.#..
###..
###.#
###.#
#####

.....
.....
.....
#.#..
#.#.#
###.#
#####

.....
.....
.....
...#.
..###
#.###
#####

#####
#####
#.###
#.###
#..#.
#..#.
.....

.....
.....
.#...
.#...
###.#
#####
#####

#####
.####
..###
..#.#
..#..
.....
.....

#####
#.###
#.##.
#..#.
...#.
.....
.....

.....
.....
#..#.
#.###
#.###
#####
#####

#####
.###.
..##.
..##.
..##.
..#..
.....

.....
..#..
..#..
.##..
###.#
###.#
#####

.....
.#..#
.##.#
.##.#
###.#
#####
#####

.....
....#
..#.#
..#.#
.####
.####
#####

#####
#.###
#.###
#..##
#...#
....#
.....

#####
.####
.##.#
.##.#
.#...
.#...
.....

.....
.....
....#
#..##
##.##
##.##
#####

#####
#.###
..###
...##
...#.
...#.
.....

#####
#####
####.
#.#..
#.#..
#.#..
.....

#####
#####
#####
#####
.#.#.
.....
.....

#####
###.#
##...
##...
#....
.....
.....

#####
#.###
#..##
#..#.
#..#.
.....
.....

.....
.....
.#..#
##..#
##..#
###.#
#####

#####
####.
#.#..
#.#..
.....
.....
.....

.....
#....
#.#.#
#.#.#
#.###
#####
#####

#####
.####
..###
..###
..###
...#.
.....

.....
#.#..
###..
####.
#####
#####
#####

#####
####.
####.
####.
##.#.
#....
.....

#####
#.###
#.###
#.##.
#..#.
#....
.....

#####
#####
#####
#.###
#..#.
#..#.
.....

.....
.#...
##...
##.#.
##.#.
##.##
#####

.....
.....
...#.
..##.
.###.
#####
#####

.....
..#.#
..#.#
..#.#
#.###
#.###
#####

#####
.####
.####
.####
..###
...#.
.....

.....
#....
#...#
#...#
##.##
#####
#####

#####
####.
##.#.
#....
.....
.....
.....

#####
#.###
#..##
#...#
#....
.....
.....

#####
#####
###.#
.#..#
.#..#
.#..#
.....

#####
.##.#
.##.#
.#...
.#...
.....
.....

.....
.#.#.
##.#.
#####
#####
#####
#####

#####
####.
####.
####.
.#.#.
.#.#.
.....

.....
.....
..#..
..#..
..#..
.##.#
#####

.....
#.#.#
#.#.#
#.#.#
###.#
#####
#####

#####
#####
#.##.
#.#..
#.#..
#.#..
.....

#####
##.##
.#.#.
...#.
...#.
.....
.....

.....
.....
.#..#
##..#
##.##
##.##
#####

.....
....#
....#
....#
#...#
#.#.#
#####

.....
.#...
.##.#
.##.#
.##.#
.##.#
#####

.....
#..#.
#.##.
#.##.
#.###
#.###
#####

#####
#####
##.##
#..##
....#
.....
.....

.....
.#..#
##..#
###.#
###.#
#####
#####

#####
.#.##
...##
....#
....#
.....
.....

.....
.....
.#.#.
.###.
.####
#####
#####

.....
.....
.....
.#...
.#...
.##.#
#####

#####
#####
###.#
###.#
#.#.#
#.#.#
.....

.....
#....
#...#
#.#.#
#.#.#
#####
#####

.....
.#...
.#...
.##..
###..
####.
#####

.....
.....
#....
#.#.#
###.#
###.#
#####

#####
####.
###..
#.#..
..#..
..#..
.....

.....
#.#..
#.#..
#.#..
#.#..
###.#
#####

#####
#.###
#.###
#.##.
#..#.
...#.
.....

.....
#...#
#..##
#..##
##.##
#####
#####

#####
#####
#####
###.#
###..
.#...
.....

#####
#.#.#
#.#.#
#.#.#
#.#..
#.#..
.....

#####
.#.##
.#.##
.#.##
....#
....#
.....

.....
.....
...#.
...#.
#..#.
#.##.
#####

.....
#.#..
#.#..
###..
####.
####.
#####

.....
.#...
.#..#
.##.#
#####
#####
#####

#####
#####
#.###
..###
...##
...#.
.....

#####
###.#
#.#.#
#.#.#
#.#..
#....
.....

.....
.#...
.#...
###..
###..
###.#
#####

.....
..#..
#.#..
###.#
###.#
#####
#####

#####
####.
##.#.
##...
#....
#....
.....

#####
####.
##.#.
.#.#.
.#...
.....
.....

#####
#####
#####
####.
#.#..
#.#..
.....

#####
#.##.
..##.
..##.
...#.
.....
.....

.....
....#
#...#
#...#
##.##
##.##
#####

#####
###.#
#.#.#
#.#..
#....
.....
.....

#####
.##.#
.##.#
..#.#
..#.#
..#..
.....

.....
#....
#....
#.#..
#.#..
#.##.
#####

.....
.....
....#
#.#.#
#.#.#
#.#.#
#####

#####
#.###
#.#.#
#.#.#
..#.#
.....
.....

.....
#...#
#...#
#...#
##..#
##.##
#####

.....
.#..#
.#..#
.#.##
.#.##
##.##
#####

#####
###.#
.##.#
.##..
.#...
.....
.....

.....
.....
#....
#..#.
##.#.
##.#.
#####

.....
...#.
#..#.
#..##
#.###
#####
#####

#####
#####
#.###
#..##
#...#
....#
.....

#####
##.#.
##.#.
##.#.
.#.#.
.#...
.....

#####
##.#.
.#.#.
.#.#.
...#.
.....
.....

#####
###.#
.##.#
.##.#
.##.#
..#..
.....

#####
.####
..#.#
..#.#
.....
.....
.....

#####
.#.##
.#.#.
.#...
.....
.....
.....

#####
####.
#.##.
..##.
..##.
...#.
.....

#####
#.##.
..#..
..#..
..#..
.....
.....

#####
.####
.###.
.#.#.
.#.#.
...#.
.....

.....
.....
..#..
..#.#
..#.#
#.#.#
#####

#####
#.###
..###
..##.
..#..
..#..
.....

.....
.....
.....
#...#
#.#.#
#.#.#
#####

.....
..#..
..##.
#.##.
#####
#####
#####

.....
....#
..#.#
..#.#
#.###
#####
#####

#####
###.#
.##..
..#..
..#..
.....
.....

#####
###.#
##..#
##..#
.#..#
....#
.....

.....
..#..
..#.#
#.###
#.###
#####
#####

#####
.###.
.###.
.##..
..#..
.....
.....

#####
.#.##
.#..#
.#...
.#...
.....
.....

.....
.....
..#..
.###.
.###.
#####
#####

#####
##.##
##..#
##..#
#...#
#...#
.....

#####
.####
.####
.####
.#.##
.#..#
.....

#####
#####
#.##.
#.##.
#..#.
#....
.....

#####
#.###
#..#.
#..#.
#....
.....
.....

.....
.....
...#.
#..#.
#.##.
#.##.
#####

.....
.....
.....
...#.
#..#.
##.##
#####

#####
#.###
#.###
#..##
....#
....#
.....

.....
.#...
.#...
.##..
.##..
####.
#####

#####
#####
##.##
.#..#
.#..#
....#
.....

.....
#...#
#..##
#.###
#.###
#####
#####

#####
#.###
#.###
..###
...##
...#.
.....

.....
..#..
.###.
.###.
####.
####.
#####

.....
..#..
..#..
..#..
#.#..
#.##.
#####

.....
.#...
.#.#.
.#.#.
.#.#.
.###.
#####

.....
..#..
.##.#
.##.#
.####
#####
#####

.....
#....
##...
##...
##..#
###.#
#####

.....
.#...
##..#
###.#
###.#
#####
#####

.....
..#..
..#.#
..#.#
#.#.#
#.#.#
#####

#####
#####
.####
.##.#
.##..
.#...
.....

#####
###.#
.##.#
.##.#
.#..#
....#
.....

.....
.....
.....
#..#.
##.#.
####.
#####

.....
...#.
...##
..###
..###
.####
#####

#####
#####
#.###
#.#.#
#.#.#
....#
.....

#####
####.
###..
##...
#....
#....
.....

.....
..#..
.##..
.##.#
.##.#
#####
#####

.....
#...#
#...#
##..#
##..#
##.##
#####

.....
...#.
...#.
...#.
.#.#.
.#.#.
#####

#####
###.#
###.#
###.#
###..
.#...
.....

.....
...#.
#.##.
#.###
#.###
#####
#####

#####
#.###
#..#.
#..#.
.....
.....
.....

#####
#####
.#.##
....#
....#
....#
.....

#####
#####
#####
.###.
.#.#.
.#...
.....

#####
#####
#.#.#
#.#..
.....
.....
.....

.....
#..#.
##.#.
##.#.
#####
#####
#####

.....
..#..
..#..
..#..
.##.#
#####
#####

#####
###.#
#.#.#
#...#
#...#
.....
.....

#####
#.##.
#..#.
#..#.
.....
.....
.....

.....
.....
....#
.#..#
.##.#
.####
#####

.....
...#.
#..##
#..##
#..##
##.##
#####

#####
####.
###..
#.#..
#.#..
#.#..
.....

#####
###.#
###.#
.##.#
.##.#
..#.#
.....

.....
..#..
..#..
..#..
.##..
####.
#####

#####
##.##
#..##
#..##
#..##
...#.
.....

#####
#####
##.##
##.##
.#.##
...#.
.....

#####
###.#
###..
###..
##...
#....
.....

#####
##.##
##.#.
##.#.
.#.#.
.#.#.
.....

.....
....#
....#
#..##
##.##
##.##
#####

#####
.###.
.###.
.###.
..#..
.....
.....

#####
#.###
#.##.
...#.
...#.
...#.
.....

#####
###.#
##..#
.#..#
.#...
.#...
.....

.....
#....
#....
#..#.
#.###
#####
#####

.....
..#..
..#..
.###.
#####
#####
#####

#####
##.##
##.##
##.#.
##.#.
.#.#.
.....

#####
#####
#.#.#
#.#.#
..#.#
..#..
.....

.....
...#.
#..#.
#..#.
#.###
#####
#####

#####
.##.#
.##..
..#..
..#..
..#..
.....

#####
.#.#.
.#.#.
.#.#.
.#...
.....
.....

.....
.....
.....
.....
.#..#
.#.##
#####

#####
#####
#####
#.#.#
#.#.#
#.#.#
.....

#####
####.
.###.
.###.
.#.#.
...#.
.....

#####
#####
###.#
.##.#
.##.#
.#..#
.....

.....
.....
#....
#.#.#
###.#
#####
#####

.....
..#..
..#..
..#..
#.##.
#####
#####

#####
#####
##.##
##.##
##.#.
#..#.
.....

.....
....#
..#.#
..###
..###
.####
#####

#####
.##.#
.##..
.##..
..#..
..#..
.....

#####
#.###
#.#.#
#...#
#....
.....
.....

#####
#####
####.
#.#..
#....
#....
.....

#####
#####
##.##
.#.##
.#.#.
...#.
.....

#####
####.
#.##.
#.#..
#.#..
..#..
.....

#####
#####
.####
.##.#
..#.#
.....
.....

.....
.....
..#..
..#.#
.####
.####
#####

#####
##.##
##..#
#...#
.....
.....
.....

#####
.##.#
.#..#
.#..#
.#...
.....
.....

.....
...#.
#.##.
#.##.
#.###
#.###
#####

#####
###.#
##...
.#...
.....
.....
.....

#####
#####
###.#
.##.#
..#.#
....#
.....

#####
###.#
###..
.##..
.##..
..#..
.....

.....
...#.
.#.#.
.#.##
##.##
#####
#####

.....
.#...
.#...
##..#
###.#
###.#
#####

.....
....#
#...#
#.#.#
#.#.#
#.#.#
#####

#####
.##.#
.##.#
..#.#
....#
.....
.....

.....
.#.#.
.#.#.
.#.#.
##.##
##.##
#####

.....
.#...
.##..
.##..
.##.#
.##.#
#####

.....
.....
..#.#
.####
.####
#####
#####

.....
.#...
.#...
.##.#
.##.#
#####
#####

.....
...#.
#..#.
#.###
#.###
#####
#####

.....
...#.
...#.
#..#.
#..#.
##.##
#####

#####
##.#.
##...
.#...
.#...
.....
.....

#####
#####
###.#
##..#
##...
.#...
.....

#####
####.
####.
##.#.
#....
#....
.....

.....
.....
.#.#.
.#.##
##.##
#####
#####

#####
#.#.#
#.#..
#.#..
#.#..
#....
.....

.....
.....
....#
....#
..#.#
.####
#####

#####
##.##
##.##
##.#.
#..#.
.....
.....

#####
##.##
##.##
#...#
#....
.....
.....

.....
...#.
...#.
.#.#.
.#.#.
.#.##
#####

.....
.#.#.
##.#.
##.#.
##.##
#####
#####

.....
#...#
#...#
##..#
###.#
#####
#####

.....
.....
....#
....#
....#
.#.##
#####

.....
...#.
.#.#.
.###.
.###.
#####
#####

#####
#####
####.
#.##.
#.#..
#.#..
.....

.....
....#
..#.#
.##.#
#####
#####
#####

#####
#.###
#.###
#.##.
#.#..
#.#..
.....

.....
.#...
.#...
.#..#
.##.#
#####
#####

.....
..#.#
..#.#
..#.#
#.#.#
#.#.#
#####

#####
##.#.
##.#.
##.#.
.#.#.
.#.#.
.....

.....
.....
#..#.
#..#.
#..##
#.###
#####

.....
....#
#...#
#..##
#.###
#.###
#####

#####
####.
####.
.###.
.#.#.
...#.
.....

.....
.....
.....
..#.#
..#.#
.##.#
#####

.....
.....
.....
.....
#.#.#
###.#
#####

.....
.#.#.
.#.#.
.###.
.###.
#####
#####

.....
#....
#....
#..#.
##.#.
#####
#####

#####
.####
.####
.#.##
.#.##
...#.
.....

.....
.#...
.#...
.#...
###..
####.
#####

.....
..#..
..#.#
..#.#
..###
.####
#####

#####
##.##
##.##
#...#
#....
#....
.....

.....
....#
.#.##
.####
#####
#####
#####

.....
.....
..#..
.##..
####.
####.
#####

#####
.#.##
...##
...#.
...#.
...#.
.....

.....
..#..
..#..
..#..
#.##.
#.##.
#####

#####
#.#.#
#.#.#
.....
.....
.....
.....

#####
#####
#####
##.##
#...#
#...#
.....

.....
.....
#....
#...#
#.#.#
###.#
#####

#####
#.###
#.###
..##.
...#.
.....
.....

#####
#####
##.#.
.#.#.
.#.#.
.....
.....

.....
...#.
...##
..###
.####
#####
#####

.....
.#...
.#...
##...
###..
###.#
#####

.....
.#...
.#..#
.#..#
.#.##
.#.##
#####

.....
.....
....#
.#..#
.#.##
.####
#####

.....
.....
.#..#
.#.##
.#.##
.#.##
#####

.....
.#...
##..#
##..#
##.##
##.##
#####

#####
#####
.####
.###.
.###.
..#..
.....

#####
#.###
#.##.
#.##.
#.##.
...#.
.....

.....
#.#..
#.#..
###.#
###.#
###.#
#####

.....
..#..
..##.
..##.
..##.
.###.
#####

.....
...#.
...#.
...#.
...#.
.#.#.
#####

#####
#.###
#.###
#.##.
#.##.
..#..
.....

.....
....#
...##
.#.##
.#.##
##.##
#####

#####
#####
.####
.###.
.#.#.
.#.#.
.....

#####
#####
#.#.#
#...#
#....
#....
.....

.....
#.#.#
#.#.#
#.#.#
#####
#####
#####

.....
.#...
.##..
####.
#####
#####
#####

.....
..#.#
..###
#.###
#.###
#.###
#####

#####
#####
#####
###.#
##...
.#...
.....

#####
#####
#.#.#
..#.#
..#.#
.....
.....

#####
####.
####.
####.
#.#..
#.#..
.....

#####
#.###
#.#.#
#...#
....#
....#
.....

.....
...#.
...#.
...##
...##
#.###
#####

#####
.###.
.###.
.###.
..##.
...#.
.....

.....
.....
.#..#
.#..#
.##.#
#####
#####

#####
#.#.#
#.#.#
#.#.#
..#.#
..#..
.....

#####
##.##
.#.##
...##
...#.
...#.
.....

#####
####.
##.#.
##.#.
.#.#.
.....
.....

#####
#####
##.##
#...#
#...#
#....
.....

#####
#.###
#.###
#.##.
#..#.
#..#.
.....

#####
###.#
###.#
#.#.#
#.#.#
#.#.#
.....

#####
#####
#####
#.###
#.###
...#.
.....

.....
.#...
.#.#.
##.#.
##.#.
#####
#####

.....
.....
..#..
..##.
..##.
.###.
#####

.....
.....
...#.
..###
..###
#.###
#####

#####
##.##
##.##
##..#
##..#
#....
.....

#####
#.###
#.##.
..##.
..#..
..#..
.....

.....
..#..
.##..
.##..
.##.#
###.#
#####

#####
.####
.####
.##.#
.#..#
.....
.....

#####
#.###
..##.
...#.
...#.
...#.
.....

#####
#.###
#..#.
...#.
.....
.....
.....

.....
...#.
#.###
#.###
#####
#####
#####

.....
..#.#
..#.#
#.#.#
#.###
#####
#####

#####
#.###
#.#.#
#.#.#
#.#..
#....
.....

.....
..#..
..#..
#.#..
#.#.#
###.#
#####

#####
#.###
#.###
#..#.
#..#.
.....
.....

.....
.#...
.#.#.
####.
####.
####.
#####

#####
##.#.
##.#.
##.#.
##...
.#...
.....

#####
.####
..##.
..##.
..#..
..#..
.....

#####
#.#.#
#.#.#
#...#
#...#
.....
.....

.....
.....
#...#
#...#
#...#
##.##
#####

.....
....#
....#
...##
..###
.####
#####

#####
#####
#.###
#.#.#
#.#.#
#....
.....

.....
#.#..
#.#..
#.#..
#.##.
#.##.
#####

#####
##.##
#..##
#..##
...#.
...#.
.....

.....
..#..
..#..
.###.
.####
#####
#####

#####
#.###
#.###
#.#.#
#.#.#
#...#
.....

.....
.#...
.#..#
.#..#
.##.#
###.#
#####

.....
.....
.#...
.#..#
.##.#
.##.#
#####

#####
#.#.#
#...#
#...#
....#
....#
.....

.....
.#..#
.#.##
##.##
##.##
#####
#####

#####
#####
##.#.
.#...
.#...
.....
.....

.....
.....
#.#..
####.
####.
#####
#####

.....
.....
....#
#...#
#...#
#.#.#
#####

#####
####.
####.
####.
####.
#.#..
.....

.....
.....
.....
..#..
..##.
.###.
#####

.....
.....
..#..
.##..
.###.
.####
#####

.....
.....
..#..
#.##.
#.##.
#.##.
#####

.....
...#.
.#.##
.#.##
.#.##
##.##
#####

#####
.####
.####
.##.#
.##.#
..#..
.....

.....
.#...
.##..
.###.
.####
.####
#####

.....
#..#.
#..#.
##.#.
#####
#####
#####

.....
..#..
..#..
.##..
.###.
####.
#####

#####
#####
####.
##.#.
.#.#.
.#.#.
.....

#####
###.#
#.#.#
#.#.#
#.#.#
#.#..
.....

#####
#####
##.##
#...#
....#
.....
.....

.....
....#
...##
#.###
#####
#####
#####

.....
...#.
...#.
#..#.
#.##.
####.
#####

.....
...#.
.#.#.
.###.
####.
####.
#####

.....
.#...
.#...
.##.#
.##.#
###.#
#####

#####
####.
####.
.##..
.#...
.#...
.....

#####
.###.
.###.
.#.#.
.#.#.
.#.#.
.....

.....
.....
#.#..
####.
#####
#####
#####

#####
#####
#####
###.#
.##.#
..#.#
.....

.....
.#...
.#...
###..
###.#
###.#
#####

.....
.#...
.#...
.##.#
.####
#####
#####

#####
###.#
#.#.#
....#
.....
.....
.....

#####
##.##
##.##
##.##
#..##
#..#.
.....

#####
#.###
..###
..#.#
..#.#
..#.#
.....

.....
.....
.....
...#.
..###
.####
#####

#####
#####
#.###
#.###
...##
....#
.....

#####
.####
.#.##
.#.#.
...#.
.....
.....

#####
#.#.#
..#.#
..#.#
..#.#
.....
.....

#####
.###.
.###.
.##..
.#...
.#...
.....

.....
.....
.#..#
.#.##
.####
.####
#####

.....
#....
#....
#.#..
###..
###.#
#####

.....
.#...
.#.#.
.#.#.
.#.#.
####.
#####

#####
#####
#.###
#.###
...#.
...#.
.....

.....
...#.
#..#.
#..##
##.##
#####
#####

.....
..#..
..#..
.###.
.####
.####
#####

.....
#....
#....
#..#.
##.#.
##.##
#####

.....
.....
.....
.#...
.##.#
.##.#
#####

#####
###.#
.##.#
.##.#
.#..#
.#...
.....

#####
.#.##
.#.##
.#.##
...#.
...#.
.....

.....
#....
#.#..
#.#..
###.#
###.#
#####

.....
#.#..
#.##.
#.##.
#.###
#####
#####

.....
.....
#....
#..#.
##.#.
##.##
#####

#####
####.
####.
.###.
..#..
..#..
.....

#####
.###.
.###.
.###.
.###.
..#..
.....

#####
#####
#.###
..###
..##.
..#..
.....

#####
##.##
#...#
#...#
#...#
....#
.....

.....
.....
.#...
.##.#
.####
.####
#####

.....
.....
..#.#
#.#.#
#.###
#####
#####

#####
#####
##.##
##.##
.#.#.
.#...
.....

.....
#....
#.#..
#.#.#
#####
#####
#####

#####
###.#
.#..#
.#..#
.#...
.....
.....

.....
.#...
.#..#
###.#
#####
#####
#####

#####
#####
.#.##
....#
.....
.....
.....

.....
.#.#.
.#.#.
##.#.
##.#.
#####
#####

#####
#####
.####
.##.#
..#.#
....#
.....

.....
#...#
##..#
##..#
##.##
##.##
#####

#####
#####
#####
.#.##
...#.
...#.
.....

.....
.....
.#...
.##..
.##..
####.
#####

#####
#.###
#.###
..#.#
.....
.....
.....

#####
##.#.
##.#.
##.#.
##...
#....
.....

.....
#...#
#...#
#...#
#.#.#
###.#
#####

#####
#####
#####
###.#
##..#
#....
.....

#####
#.##.
#.#..
#.#..
#.#..
#....
.....

.....
.....
..#..
#.#.#
#.###
#####
#####

.....
.#..#
.#.##
.#.##
##.##
#####
#####

.....
.#...
.#..#
.#.##
.#.##
.#.##
#####

#####
##.##
#..##
#..#.
#..#.
...#.
.....

#####
#####
.##.#
.##..
.#...
.....
.....

.....
....#
...##
..###
#.###
#.###
#####

#####
#####
#####
####.
##.#.
#....
.....

.....
.#...
.#...
##.#.
####.
#####
#####

#####
###.#
###.#
.##..
..#..
.....
.....

.....
.....
...#.
...#.
..###
#.###
#####

.....
.....
..#..
..#.#
#.###
#.###
#####

#####
####.
.##..
.#...
.#...
.....
.....

.....
.#.#.
.#.#.
.#.#.
.#.##
.####
#####

#####
#####
##.##
.#.#.
.#...
.#...
.....

#####
#.###
#..#.
#..#.
#..#.
#....
.....

#####
#.###
#.#.#
#...#
.....
.....
.....

.....
#.#..
#.#.#
#.#.#
#####
#####
#####

#####
#####
##.##
#..##
#...#
....#
.....

.....
#....
##...
##.#.
#####
#####
#####

#####
###.#
###.#
###.#
#.#.#
#.#.#
.....

#####
.###.
.#.#.
.#.#.
.....
.....
.....

.....
..#..
..#.#
..#.#
#.#.#
#.###
#####

#####
#####
####.
#.##.
#.#..
.....
.....

.....
.....
..#..
.##..
###.#
###.#
#####

.....
...#.
...#.
.#.##
.####
#####
#####

.....
.....
.#...
.#...
.#.#.
####.
#####

.....
.....
.....
.#..#
.#.##
##.##
#####

.....
....#
...##
.#.##
##.##
#####
#####

.....
#...#
#..##
#..##
#.###
#.###
#####

#####
#####
##.#.
##.#.
.#.#.
.....
.....

#####
##.##
##..#
.#..#
....#
.....
.....

.....
.....
..#..
#.#..
#.#..
###.#
#####

#####
#.###
#..##
#...#
#...#
#....
.....

#####
#.###
#..##
#..#.
#..#.
#..#.
.....

.....
#....
#....
#..#.
#.###
#.###
#####

#####
#.###
#.#.#
#.#.#
#...#
....#
.....

.....
.....
.....
.#..#
.##.#
###.#
#####

#####
##.##
.#.##
.#.##
.#.##
...#.
.....

#####
#.#.#
#.#..
#.#..
#.#..
..#..
.....

.....
.#...
.#...
.#..#
.#.##
##.##
#####

.....
.#.#.
.#.#.
.#.##
.#.##
.####
#####

.....
#.#..
###..
###..
####.
#####
#####

.....
....#
....#
....#
...##
.#.##
#####

.....
.....
.....
....#
..#.#
.##.#
#####

.....
.#..#
.##.#
.##.#
#####
#####
#####

.....
.....
.#...
.#...
##..#
##.##
#####

#####
#####
####.
###..
##...
#....
.....

.....
...#.
#..##
##.##
#####
#####
#####

#####
##.##
##.##
.#.##
.#.##
....#
.....

.....
.....
.#...
.#.#.
##.#.
##.##
#####

.....
.....
.#...
.#.#.
.#.#.
.#.##
#####

.....
#.#.#
#.#.#
#.#.#
#.###
#.###
#####

.....
...#.
...#.
#..#.
##.#.
##.#.
#####

#####
####.
###..
##...
##...
.#...
.....

#####
####.
.##..
.#...
.....
.....
.....

.....
.#.#.
.#.#.
.###.
####.
####.
#####

.....
.....
....#
#...#
#.#.#
###.#
#####

.....
.....
..#.#
#.#.#
#.#.#
#####
#####

#####
##.##
##.##
##..#
#....
.....
.....

.....
...#.
#..#.
#..#.
#..#.
#.###
#####

#####
##.##
##.##
#..##
...#.
...#.
.....

.....
....#
.#.##
.#.##
##.##
#####
#####

#####
##.##
##.#.
.#.#.
.#.#.
.#...
.....

#####
#####
#####
#####
####.
#.#..
.....

#####
#####
##.#.
#....
#....
#....
.....

.....
#..#.
#.###
#.###
#.###
#####
#####

#####
#.##.
#.#..
#.#..
..#..
..#..
.....

.....
.....
.#...
.#...
.##.#
.##.#
#####

#####
#####
.###.
.##..
..#..
..#..
.....

#####
#####
##.##
##..#
##..#
#....
.....

#####
.#.##
.#.##
.#.##
.#.##
.#..#
.....

#####
##.##
##.##
##.##
##.##
.#..#
.....

.....
..#..
..#..
..#..
..#..
.##.#
#####

.....
.#...
.#...
###.#
###.#
###.#
#####

.....
..#..
..#..
..##.
.####
.####
#####

.....
.#...
.##..
.###.
.###.
#####
#####

#####
#####
#.###
#.##.
#..#.
...#.
.....

.....
#..#.
#..##
#..##
##.##
##.##
#####

#####
.####
.#.##
....#
.....
.....
.....

#####
####.
#.##.
#.##.
#..#.
.....
.....

#####
###.#
#.#.#
#.#.#
....#
....#
.....

#####
#.###
#.###
#.#.#
.....
.....
.....

#####
#####
#####
##.#.
#....
#....
.....

.....
...#.
..##.
#.##.
#.##.
####.
#####

.....
.....
.....
.#..#
.#.##
.#.##
#####

.....
...#.
.#.#.
.#.#.
.#.##
#####
#####

#####
.####
.####
.#.#.
...#.
...#.
.....

#####
##.#.
##.#.
##...
##...
#....
.....

.....
.....
..#..
..##.
..##.
.####
#####

#####
####.
####.
.##..
.##..
..#..
.....

#####
.####
.##.#
.##..
.#...
.....
.....

.....
.....
....#
.#..#
.#..#
.#.##
#####

#####
##.#.
#..#.
#..#.
#....
.....
.....

.....
.#..#
.#.##
.#.##
.#.##
#####
#####

#####
#####
##.##
##.##
.#..#
.....
.....

#####
#####
#####
#.##.
..#..
..#..
.....

#####
#.###
...##
....#
.....
.....
.....

#####
#####
#.#.#
#.#..
..#..
.....
.....

#####
###.#
.##.#
.##..
.#...
.#...
.....

.....
..#..
..#..
#.#.#
#.#.#
#.###
#####

.....
.#...
.#...
.##..
.###.
#####
#####

.....
#..#.
#..#.
#..#.
##.#.
##.##
#####

.....
.#..#
.##.#
.##.#
.####
#####
#####

.....
.....
.#.#.
.####
.####
.####
#####

.....
.#...
.#.#.
.###.
.####
#####
#####

.....
#..#.
#..##
#..##
#..##
##.##
#####

.....
..#..
#.#..
####.
####.
####.
#####

#####
#####
##.##
##.##
#..##
....#
.....

#####
.##.#
.##..
.#...
.#...
.....
.....

#####
#####
.####
.#.#.
...#.
...#.
.....

.....
.#...
.#.#.
.#.#.
#####
#####
#####

.....
#.#..
#.##.
#.###
#.###
#####
#####

#####
.#.##
.#..#
.#...
.....
.....
.....

#####
#.###
#.###
#..#.
#....
#....
.....

#####
#####
##.##
##.#.
##...
.#...
.....

#####
##.##
##.##
##.##
##..#
.#..#
.....

.....
.....
.#.#.
.#.#.
.#.##
.####
#####

#####
#.#.#
..#.#
..#.#
.....
.....
.....

#####
#####
###.#
##..#
#....
.....
.....

.....
.....
.#...
.#.#.
.#.#.
.#.#.
#####

#####
.#.##
...##
...##
....#
....#
.....

#####
#####
.####
.####
..#.#
..#..
.....

.....
.....
..#..
..#..
..#.#
#.###
#####

#####
.####
.#.##
.#.#.
.#...
.....
.....

#####
##.#.
.#...
.....
.....
.....
.....

#####
#####
#####
.###.
.###.
.#.#.
.....

.....
...#.
.#.#.
##.#.
##.#.
#####
#####

#####
####.
#.#..
#.#..
..#..
..#..
.....
"""

let testInput = """
#####
.####
.####
.####
.#.#.
.#...
.....

#####
##.##
.#.##
...##
...#.
...#.
.....

.....
#....
#....
#...#
#.#.#
#.###
#####

.....
.....
#.#..
###..
###.#
###.#
#####

.....
.....
.....
#....
#.#..
#.#.#
#####
"""
