//float [] nums;
import java.util.List;
ArrayList <Comparable> nums = new ArrayList <Comparable>();

void setup() {
  for (int z = 0; z<10; z++) {
    nums.add(random(10));
  }
  int k= millis();
  mergeSort(nums, 0, nums.size()-1);
  println(millis()-k);
}

void draw() {
}

void sortOne() {
  for (int j = 1; j< nums.size(); j++) {
    Comparable js = nums.get(j);
    int i = j - 1;
    while (i>=0 && (nums.get(i).compareTo(js)>0)) {
      nums.set(i+1, nums.get(i));
      i=i-1;
    }
    nums.set(i+1, js);
  }
}

void merge(ArrayList <Comparable> array, int p, int q, int r) {
  int n1 = q - p +1;
  int n2 = r - q; //both n1 & n2 are 5
  ArrayList <Comparable> L= new ArrayList <Comparable>();
  ArrayList <Comparable> R =new ArrayList <Comparable>();
  for (int i = 0; i<n1; i++) {
    L.add(array.get(p+i));
  }
  for (int j=0; j<n2; j++) {
    R.add(array.get(q+j+1));
  }
  L.add(1/0.0);
  R.add(1/0.0);
  int i=0;
  int j=0;
  for (int k=p; k<=r; k++) {
    println(i,j);
    if (L.get(i).compareTo(R.get(j))>=0 && i <L.size()){
      array.set(k, L.get(i));
      i++;
    } else {
      array.set(k, R.get(j));
      j++;
    }
  }
}

void mergeSort(ArrayList <Comparable> array, int p, int r) {
  int q;
  if (p < r) {
    q= floor((p+r)/2);
    mergeSort(array, p, q);
    mergeSort(array, q+1, r);
    merge(array, p, q, r);
  }
}