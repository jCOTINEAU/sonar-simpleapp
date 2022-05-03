# java memory sizing
```java -XX:+PrintFlagsFinal -version | grep HeapSize```

# openjdk:11-oracle

## vanilla
   size_t InitialHeapSize                          = 125                                 {product} {ergonomic}
   size_t MaxHeapSize                              = 1996                                {product} {ergonomic}

## -m 512M ( container support is enabled )
   size_t InitialHeapSize                          = 125                                 {product} {ergonomic}
   size_t MaxHeapSize                              = 1996                                {product} {ergonomic}

## -e 'JAVA_TOOL_OPTIONS=-Xmx512m' -m 512M
   size_t InitialHeapSize                          = 125                                 {product} {ergonomic}
   size_t MaxHeapSize                              = 536                                 {product} {command line}

## -e 'JAVA_TOOL_OPTIONS=-Xmx10m' -m 10M
   size_t InitialHeapSize                          = 10                                  {product} {ergonomic}
   size_t MaxHeapSize                              = 10                                  {product} {command line}

# openjdk

## vanilla
   size_t MaxHeapSize                              = 1996                                {product} {ergonomic}
   size_t MinHeapSize                              = 8                                   {product} {ergonomic}

## -m 512M
   size_t MaxHeapSize                              = 134                                 {product} {ergonomic}
   size_t MinHeapSize                              = 8                                   {product} {ergonomic}

## -m 1024M
   size_t MaxHeapSize                              = 268                                 {product} {ergonomic}
   size_t MinHeapSize                              = 8                                   {product} {ergonomic}

## -m 8086M
   size_t MaxHeapSize                              = 2122                                {product} {ergonomic}
   size_t MinHeapSize                              = 8                                   {product} {ergonomic}

## -m 1024G
   size_t MaxHeapSize                              = 32178                               {product} {ergonomic}
   size_t MinHeapSize                              = 16                                  {product} {ergonomic}
