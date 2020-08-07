# Julia Algorithms Study

## It is a study guide for people who are interested in learning Classical Algorithms in Julia. The repository contains a set of classical algorithms approaching different techniques such as graphs and dynamic programming. Each problem contains its description and implementation using Julia.

Contents
1. [Connected Components](#connectedcomponents)
2. [Knapsack Problem](#knapsack)
3. [Longest Common Subsequence](#LCS)
4. [Longest Increasing Subsequence](#LIS)
5. [Minimum Spanning Tree](#MST)
6. [Single Shortest Path](#SSP)
7. [Subset Sum](#subsetsum)


<!-- ######### CONNECTED COMPONENTS ######### -->
<a name="connectedcomponents"></a>

## Connected Components

<p>Given an undirected graph, print all connected components.</p>

**Solutions**
* Depth First Search (DFS)
* Breadth First Search (BFS)

<!-- ######### KNAPSACK PROBLEM ######### -->
<a name="knapsack"></a>

## Knapsack Problem

<p>Given a set of items with different values and weights, determine which items to include in a collection that total weight of items is less than or equal to a given limit, and the total value is higher as possible.</p>

**Solutions**
* Greedy (Not Optimal)
* Dynamic Programming

<!-- ######### LONGEST COMMON SUBSEQUENCE PROBLEM ######### -->
<a name="LCS"></a>

## Longest Common Subsequence

<p>Given two sequences, find the length of the longest subsequence present in both of them. A subsequence is a sequence that appears in the same relative order, but not necessarily contiguous.</p>

**Solutions**
* Brute Force (Recursion)
* Dynamic Programming

<!-- ######### LONGEST INCREASING SUBSEQUENCE PROBLEM ######### -->
<a name="LIS"></a>

## Longest Increasing Subsequence

<p>Given a sequence of integers, the problem is to find the length of the longest, strictly increasing, subsequence in that sequence.</p>

**Solutions**
* Dynamic Programming
* Divide and Conquer

<!-- ######### MINIMUM SPANNING TREE PROBLEM ######### -->
<a name="MST"></a>

## Minimum Spanning Tree

<p>A minimum spanning tree (MST) is a subset of the edges of a connected, edge-weighted undirected graph that connects all the vertices, without any cycles and with the minimum total weight.</p>

**Solutions**
* Kruskal's Algorithm
* Prim's Algorithm

<!-- ######### SINGLE SHORTEST PATH PROBLEM ######### -->
<a name="SSP"></a>

## Single Shortest Path

<p>Given a graph and a source vertex, find the minimum cost paths from source to every vertex in that graph.</p>

**Solutions**
* Bellman-Ford's Algorithm
* Dijkstra's Algorithm

## Subset Sum

<p>Given a set of non-negative integers, and a value, determine if there is a subset of the given set with a sum equal to a given value.</p>

**Solutions**
* Brute Force (Recursion)
* Dynamic Programming