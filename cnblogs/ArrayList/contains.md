ArrayList类的contains方法 

> 如果此 collection 包含指定的元素，则返回 `true`。

具体实现

```java
public boolean contains(Object o) {
	return indexOf(o) >= 0;
}
```

```java
public int indexOf(Object o) {
	if (o == null) {
    	for (int i = 0; i < size; i++)
        	if (elementData[i]==null)
            	return i;
        } else {
            for (int i = 0; i < size; i++)
                if (o.equals(elementData[i]))
                    return i;
		}
	return -1;
}
```

**可以看到此方法是通过equals方法逐个判断是否有某个元素的，如果集合中存在的是我们自己写的java类，那么请重写equals方法。**

