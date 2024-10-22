import '../models/quiz_question.dart';

const questions=[QuizQuestions("Which of these is a divide and conquer algorithm?",["Merg sort"
,"Selection sort","Insertion Sort","Bubble sort"]),
QuizQuestions("What algorithm is used to find the shortest path in a graph?",["Dijkstra's","Binary Search",
"Depth First Search","Linear Search"]),
QuizQuestions("What data structure uses LIFO?",["Stack","linkedlist","Array","Queue"]),
QuizQuestions("What is the worst case time complexity of a linear search?",["O(n)","O(log n)","O(1)","O(n^2)"]),
QuizQuestions("In Union-Find Cycle Detection, how is a cycle detected?",["When two vertices already belong to the same union",
"When a new union if found","When two vertices belong to diffent unions","When there is a higher number of negative vertices than positive ones"]),
QuizQuestions("In its most basic form, what does a node in a Linked List consist of?",["One area for data, and one area with a pointer to the next node in the list",
"Pointers to the head and tail of the Linked List","Data","An adjacency matrix"]),
QuizQuestions("What makes a tree 'binary'?",["Each node can have at most two child nodes","Each node has two parent nodes","Each edge is bi-directional","The tree has two root nodes"]),
QuizQuestions("What is the tree height?",["The maximum number of edges between the root node and a leaf node ","The total number of edges in the tree  ","The number of internal nodes","The number of leaf nodes"]),
QuizQuestions("What is meant by the 'bubble' in Bubble sort?",["Higher values 'bubble up'  ","Higher values stay in place inside their 'bubble', while lower values are moved around","Every time a value is compared to a neighbor value, the two are considered a 'bubble'","It is the extra memory used when swapping values, causing a 'memory bubble'"]),
QuizQuestions("Does a Linked List have a fixed size in memory?",["No","Yes"]),
QuizQuestions("How is a circular Linked List created?",["By pointing to the head node from the tail node's 'next' pointer  ","By inserting a special 'rotation' data element where you want the list to be circular  ","By flipping each node, except the last one","By rotating the head and tail nodes"]),
QuizQuestions("Which data structure uses FIFO?",["Queue","Stack","Linked list","Array"]),
QuizQuestions("Which data structure allows us to access any element directly?",["Array","Queue","Stack","Linked List"]),
QuizQuestions("In graph theory, what does BFS stand for?",["Breadth-First Search  ","Balance Factor Search  ","Binary Full Search","Best Fit Search"]),
QuizQuestions("What is the worst-case time complexity of Bubble Sort?",["O(n^2)  ","O(n log n)  ","O(log n)","O(n)"]),
QuizQuestions("What kind of graph does Dijkstra's Algorithm not work with?",["Graphs with negative weights  ","Undirected  ","Weighted","Directed"]),
QuizQuestions("Radix sort must use a ____ algorithm to sort the values correctly.",["stable  ","inverse  ","higher-order","cubic"]),
QuizQuestions("In selection sort, what can be reduced by swapping array elements?",["memory shifts  ","the highest value","the call stack","the lowest value"]),
QuizQuestions("For counting sort to work, the values must be in a limited range, they must be non negative, and what else?",["integers ","fibonacci","Prime","Odd"]),
QuizQuestions("Which of these algorithms are usually implemented using recursion?",["Merge sort  ","Selection sort  ","Bubble sort","Radix sort"]),
QuizQuestions("What is recursion in programming?",["A function that calls itself  ","When the shortest path cannot be found  ","A syntax error","Going in negative cycles"]),
QuizQuestions("If an AVL tree has '2' as the balance factor, what kind of rotation is done to self-balance?",["Left","up","Down","Right"]),
QuizQuestions("Dijkstra's Algorithm and the Bellman-Ford algorithms find what?",["The shortest paths  ","A min-heap representation","The minimum spanning tree","The longest node branch"]),
QuizQuestions("What is good about using arrays in algorithms?",["Array elements can be accessed directly  ","Memory usage is dynamic: memory usage is automatically adjusted by the number of elements in the array  ","In memory, an array element does not have to come right after the previous element","No shifting operations in memory needed when array elements are deleted or inserted"])
];