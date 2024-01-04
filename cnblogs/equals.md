# 你是谁啊？你是不是我？？(⊙_⊙)？

> 我们知道比较对象相等可以使用equal方法(来至Object对象的方法)

但是你打开Object的equal方法你会发现：

```java
public boolean equals(Object obj) {
        return (this == obj);
}
```
现在我们有一个Student类
```java
public class Student  {
	private String nam e ;
	private int age;
	public Student(String name, int age) {
		this.name = name;
		this.age = age;
	}
}
```

如果我们使用默认的方法判断stu1和stu2两个对象，得到的结果是false，因为`equals`和`==`是判断两个对象的内存地址
```java
public class Hello {
	public static void main(String[] args) {
		Student stu1 = new Student("小明",18);
		Student stu2 = new Student("小明",18);
		
		System.out.println(stu1.equals(stu2));//false
		System.out.println(stu1==stu2);//false
	}
}
```

# 我怎么让你知道我就是你？
如果要让equals比较的不是内存地址而是两个对象的对容就要对equals方法进行重写（这里使用Eclipse自动的生成方法）

```java
public class Student  {
	private String name ;
	private int age;
	public Student(String name, int age) {
		this.name = name;
		this.age = age;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + age;
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Student other = (Student) obj;
		if (age != other.age)
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		return true;
	}
		
}

```
这里重写了equals方法和hashCode方法，为啥子还要重写equals方法，这个...这个o_o ...后面再说。
我们看到重写的equals方法比较了两个对象的属性是否相等，属性都相等就认为是同一个对象了。让我们再次测试刚才的相等判断。
```java
public class Hello {
	public static void main(String[] args) {
		Student stu1 = new Student("小明",18);
		Student stu2 = new Student("小明",18);
		
		System.out.println(stu1.equals(stu2));//ture
		System.out.println(stu1==stu2);//false
		System.out.println(stu1.hashCode());
		System.out.println(stu2.hashCode());
	}
}
```
结果：
```
true
false
758222
758222
```
可以看到两个对象进行`equals`判断结果已经为true了。同时两个对象也拥有相同的hashCode值，但是为啥要重写hashCode方法，这个hashCode值有啥用呢？

Object中的equals方法解释
![](https://img2018.cnblogs.com/blog/1745057/201911/1745057-20191118224652436-1243394760.png)

其他解释参考：
[浅谈Object的hashCode方法的作用](https://blog.csdn.net/tectrol/article/details/80646966)
[为什么HashCode对于对象如此的重要](https://blog.csdn.net/TTTZZZTTTZZZ/article/details/84852801)