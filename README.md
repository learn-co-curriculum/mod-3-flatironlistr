
## API DOCUMENTATION

### API Endpoint

`https://flatiron-tasklistr.herokuapp.com`


### Get your list 
`GET /lists?user_id=1`

This will provide you with your lists. If you do not add the `user_id` parameter you will get all lists


###  Create new List

`POST /lists`

```
{
  user_id: 1,
  title: "House Chores"
}

```

### Create new Task

`POST /lists/:list_id/tasks`

Creating a task at list_id 1 for example will search for the list at id 1 and create an associated task

Note you must pass your user_id with your request. If you are not associated with that list it will give you an error.


```
  {
    user_id: 1,
    description: "Walk Cat",
    priority: 5
  }
```

### Delete Lists

`DELETE /lists/:list_id`

```
  {
    user_id: 1
  }
```


Deleting a list will delete all of its todos.



## USER IDS
1. Fei
2. Fara
3. Torre
4. Travis
5. Kristina
6. Matt
7. Morganne
8. Katy
9. Josh D
10. Cristy
11. Declan
12. osama
13. Vic
14. Alex G
15. Alex K
16. Jonathan
17. Anna
18. Josh D
19. Tania
