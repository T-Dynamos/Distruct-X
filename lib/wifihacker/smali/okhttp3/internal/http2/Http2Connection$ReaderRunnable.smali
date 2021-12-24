.class Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;
.super Lokhttp3/internal/NamedRunnable;
.source "Http2Connection.java"

# interfaces
.implements Lokhttp3/internal/http2/Http2Reader$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReaderRunnable"
.end annotation


# instance fields
.field final reader:Lokhttp3/internal/http2/Http2Reader;

.field final synthetic this$0:Lokhttp3/internal/http2/Http2Connection;


# direct methods
.method constructor <init>(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Http2Reader;)V
    .locals 4
    .param p1, "this$0"    # Lokhttp3/internal/http2/Http2Connection;
    .param p2, "reader"    # Lokhttp3/internal/http2/Http2Reader;

    .prologue
    .line 556
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    .line 557
    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 558
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    .line 559
    return-void
.end method

.method private applyAndAckSettings(Lokhttp3/internal/http2/Settings;)V
    .locals 6
    .param p1, "peerSettings"    # Lokhttp3/internal/http2/Settings;

    .prologue
    .line 693
    sget-object v0, Lokhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$3;

    const-string v2, "OkHttp %s ACK Settings"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v5, v5, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, v3, p1}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$3;-><init>(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/http2/Settings;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 701
    return-void
.end method


# virtual methods
.method public ackSettings()V
    .locals 0

    .prologue
    .line 705
    return-void
.end method

.method public alternateService(ILjava/lang/String;Lokio/ByteString;Ljava/lang/String;IJ)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "origin"    # Ljava/lang/String;
    .param p3, "protocol"    # Lokio/ByteString;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "maxAge"    # J

    .prologue
    .line 768
    return-void
.end method

.method public data(ZILokio/BufferedSource;I)V
    .locals 4
    .param p1, "inFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "source"    # Lokio/BufferedSource;
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 584
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p2}, Lokhttp3/internal/http2/Http2Connection;->pushedStream(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 585
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p2, p3, p4, p1}, Lokhttp3/internal/http2/Http2Connection;->pushDataLater(ILokio/BufferedSource;IZ)V

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p2}, Lokhttp3/internal/http2/Http2Connection;->getStream(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v0

    .line 589
    .local v0, "dataStream":Lokhttp3/internal/http2/Http2Stream;
    if-nez v0, :cond_2

    .line 590
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, p2, v2}, Lokhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILokhttp3/internal/http2/ErrorCode;)V

    .line 591
    int-to-long v2, p4

    invoke-interface {p3, v2, v3}, Lokio/BufferedSource;->skip(J)V

    goto :goto_0

    .line 594
    :cond_2
    invoke-virtual {v0, p3, p4}, Lokhttp3/internal/http2/Http2Stream;->receiveData(Lokio/BufferedSource;I)V

    .line 595
    if-eqz p1, :cond_0

    .line 596
    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->receiveFin()V

    goto :goto_0
.end method

.method protected execute()V
    .locals 5

    .prologue
    .line 562
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 563
    .local v0, "connectionErrorCode":Lokhttp3/internal/http2/ErrorCode;
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 565
    .local v2, "streamErrorCode":Lokhttp3/internal/http2/ErrorCode;
    :try_start_0
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    invoke-virtual {v3, p0}, Lokhttp3/internal/http2/Http2Reader;->readConnectionPreface(Lokhttp3/internal/http2/Http2Reader$Handler;)V

    .line 566
    :cond_0
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p0}, Lokhttp3/internal/http2/Http2Reader;->nextFrame(ZLokhttp3/internal/http2/Http2Reader$Handler;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 568
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 569
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    :try_start_1
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v3, v0, v2}, Lokhttp3/internal/http2/Http2Connection;->close(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 578
    :goto_0
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 580
    :goto_1
    return-void

    .line 570
    :catch_0
    move-exception v1

    .line 571
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 572
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 575
    :try_start_3
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v3, v0, v2}, Lokhttp3/internal/http2/Http2Connection;->close(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 578
    :goto_2
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .line 574
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 575
    :try_start_4
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v4, v0, v2}, Lokhttp3/internal/http2/Http2Connection;->close(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 578
    :goto_3
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    invoke-static {v4}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v3

    .line 576
    :catch_1
    move-exception v4

    goto :goto_3

    .restart local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    goto :goto_2

    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public goAway(ILokhttp3/internal/http2/ErrorCode;Lokio/ByteString;)V
    .locals 6
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lokhttp3/internal/http2/ErrorCode;
    .param p3, "debugData"    # Lokio/ByteString;

    .prologue
    .line 720
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 725
    :cond_0
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v3

    .line 726
    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v2, v2, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lokhttp3/internal/http2/Http2Stream;

    invoke-interface {v2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lokhttp3/internal/http2/Http2Stream;

    .line 727
    .local v1, "streamsCopy":[Lokhttp3/internal/http2/Http2Stream;
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lokhttp3/internal/http2/Http2Connection;->shutdown:Z

    .line 728
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 732
    .local v0, "http2Stream":Lokhttp3/internal/http2/Http2Stream;
    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->getId()I

    move-result v4

    if-le v4, p1, :cond_1

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 733
    sget-object v4, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v4}, Lokhttp3/internal/http2/Http2Stream;->receiveRstStream(Lokhttp3/internal/http2/ErrorCode;)V

    .line 734
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Lokhttp3/internal/http2/Http2Connection;->removeStream(I)Lokhttp3/internal/http2/Http2Stream;

    .line 731
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 728
    .end local v0    # "http2Stream":Lokhttp3/internal/http2/Http2Stream;
    .end local v1    # "streamsCopy":[Lokhttp3/internal/http2/Http2Stream;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 737
    .restart local v1    # "streamsCopy":[Lokhttp3/internal/http2/Http2Stream;
    :cond_2
    return-void
.end method

.method public headers(ZIILjava/util/List;)V
    .locals 9
    .param p1, "inFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "associatedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 602
    .local p4, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/http2/Header;>;"
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p2}, Lokhttp3/internal/http2/Http2Connection;->pushedStream(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 603
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p2, p4, p1}, Lokhttp3/internal/http2/Http2Connection;->pushHeadersLater(ILjava/util/List;Z)V

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    iget-object v7, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v7

    .line 608
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p2}, Lokhttp3/internal/http2/Http2Connection;->getStream(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v6

    .line 610
    .local v6, "stream":Lokhttp3/internal/http2/Http2Stream;
    if-nez v6, :cond_5

    .line 612
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-boolean v1, v1, Lokhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-eqz v1, :cond_2

    monitor-exit v7

    goto :goto_0

    .line 640
    .end local v6    # "stream":Lokhttp3/internal/http2/Http2Stream;
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 615
    .restart local v6    # "stream":Lokhttp3/internal/http2/Http2Stream;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget v1, v1, Lokhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    if-gt p2, v1, :cond_3

    monitor-exit v7

    goto :goto_0

    .line 618
    :cond_3
    rem-int/lit8 v1, p2, 0x2

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget v2, v2, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    rem-int/lit8 v2, v2, 0x2

    if-ne v1, v2, :cond_4

    monitor-exit v7

    goto :goto_0

    .line 621
    :cond_4
    new-instance v0, Lokhttp3/internal/http2/Http2Stream;

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    const/4 v3, 0x0

    move v1, p2

    move v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/http2/Http2Stream;-><init>(ILokhttp3/internal/http2/Http2Connection;ZZLjava/util/List;)V

    .line 623
    .local v0, "newStream":Lokhttp3/internal/http2/Http2Stream;
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iput p2, v1, Lokhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    .line 624
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    sget-object v1, Lokhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$1;

    const-string v3, "OkHttp %s stream %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v8, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v8, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-direct {v2, p0, v3, v4, v0}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$1;-><init>(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/http2/Http2Stream;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 638
    monitor-exit v7

    goto :goto_0

    .line 640
    .end local v0    # "newStream":Lokhttp3/internal/http2/Http2Stream;
    :cond_5
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 643
    invoke-virtual {v6, p4}, Lokhttp3/internal/http2/Http2Stream;->receiveHeaders(Ljava/util/List;)V

    .line 644
    if-eqz p1, :cond_0

    invoke-virtual {v6}, Lokhttp3/internal/http2/Http2Stream;->receiveFin()V

    goto :goto_0
.end method

.method public ping(ZII)V
    .locals 4
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I

    .prologue
    .line 708
    if-eqz p1, :cond_1

    .line 709
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p2}, Lokhttp3/internal/http2/Http2Connection;->removePing(I)Lokhttp3/internal/http2/Ping;

    move-result-object v0

    .line 710
    .local v0, "ping":Lokhttp3/internal/http2/Ping;
    if-eqz v0, :cond_0

    .line 711
    invoke-virtual {v0}, Lokhttp3/internal/http2/Ping;->receive()V

    .line 717
    .end local v0    # "ping":Lokhttp3/internal/http2/Ping;
    :cond_0
    :goto_0
    return-void

    .line 715
    :cond_1
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, p3, v3}, Lokhttp3/internal/http2/Http2Connection;->writePingLater(ZIILokhttp3/internal/http2/Ping;)V

    goto :goto_0
.end method

.method public priority(IIIZ)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "streamDependency"    # I
    .param p3, "weight"    # I
    .param p4, "exclusive"    # Z

    .prologue
    .line 758
    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "promisedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 762
    .local p3, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/http2/Header;>;"
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2, p3}, Lokhttp3/internal/http2/Http2Connection;->pushRequestLater(ILjava/util/List;)V

    .line 763
    return-void
.end method

.method public rstStream(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 2
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lokhttp3/internal/http2/ErrorCode;

    .prologue
    .line 648
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p1}, Lokhttp3/internal/http2/Http2Connection;->pushedStream(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 649
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p1, p2}, Lokhttp3/internal/http2/Http2Connection;->pushResetLater(ILokhttp3/internal/http2/ErrorCode;)V

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p1}, Lokhttp3/internal/http2/Http2Connection;->removeStream(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v0

    .line 653
    .local v0, "rstStream":Lokhttp3/internal/http2/Http2Stream;
    if-eqz v0, :cond_0

    .line 654
    invoke-virtual {v0, p2}, Lokhttp3/internal/http2/Http2Stream;->receiveRstStream(Lokhttp3/internal/http2/ErrorCode;)V

    goto :goto_0
.end method

.method public settings(ZLokhttp3/internal/http2/Settings;)V
    .locals 15
    .param p1, "clearPrevious"    # Z
    .param p2, "newSettings"    # Lokhttp3/internal/http2/Settings;

    .prologue
    .line 659
    const-wide/16 v2, 0x0

    .line 660
    .local v2, "delta":J
    const/4 v7, 0x0

    .line 661
    .local v7, "streamsToNotify":[Lokhttp3/internal/http2/Http2Stream;
    iget-object v9, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v9

    .line 662
    :try_start_0
    iget-object v8, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v8}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v5

    .line 663
    .local v5, "priorWriteWindowSize":I
    if-eqz p1, :cond_0

    iget-object v8, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v8}, Lokhttp3/internal/http2/Settings;->clear()V

    .line 664
    :cond_0
    iget-object v8, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Lokhttp3/internal/http2/Settings;->merge(Lokhttp3/internal/http2/Settings;)V

    .line 665
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->applyAndAckSettings(Lokhttp3/internal/http2/Settings;)V

    .line 666
    iget-object v8, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v8}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v4

    .line 667
    .local v4, "peerInitialWindowSize":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_2

    if-eq v4, v5, :cond_2

    .line 668
    sub-int v8, v4, v5

    int-to-long v2, v8

    .line 669
    iget-object v8, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-boolean v8, v8, Lokhttp3/internal/http2/Http2Connection;->receivedInitialPeerSettings:Z

    if-nez v8, :cond_1

    .line 670
    iget-object v8, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v8, v2, v3}, Lokhttp3/internal/http2/Http2Connection;->addBytesToWriteWindow(J)V

    .line 671
    iget-object v8, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    const/4 v10, 0x1

    iput-boolean v10, v8, Lokhttp3/internal/http2/Http2Connection;->receivedInitialPeerSettings:Z

    .line 673
    :cond_1
    iget-object v8, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 674
    iget-object v8, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    iget-object v10, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v10, v10, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    new-array v10, v10, [Lokhttp3/internal/http2/Http2Stream;

    invoke-interface {v8, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, [Lokhttp3/internal/http2/Http2Stream;

    move-object v7, v0

    .line 677
    :cond_2
    sget-object v8, Lokhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v10, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$2;

    const-string v11, "OkHttp %s settings"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v14, v14, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-direct {v10, p0, v11, v12}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$2;-><init>(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v8, v10}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 682
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    if-eqz v7, :cond_3

    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-eqz v8, :cond_3

    .line 684
    array-length v9, v7

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_3

    aget-object v6, v7, v8

    .line 685
    .local v6, "stream":Lokhttp3/internal/http2/Http2Stream;
    monitor-enter v6

    .line 686
    :try_start_1
    invoke-virtual {v6, v2, v3}, Lokhttp3/internal/http2/Http2Stream;->addBytesToWriteWindow(J)V

    .line 687
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 684
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 682
    .end local v4    # "peerInitialWindowSize":I
    .end local v5    # "priorWriteWindowSize":I
    .end local v6    # "stream":Lokhttp3/internal/http2/Http2Stream;
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 687
    .restart local v4    # "peerInitialWindowSize":I
    .restart local v5    # "priorWriteWindowSize":I
    .restart local v6    # "stream":Lokhttp3/internal/http2/Http2Stream;
    :catchall_1
    move-exception v8

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v8

    .line 690
    .end local v6    # "stream":Lokhttp3/internal/http2/Http2Stream;
    :cond_3
    return-void
.end method

.method public windowUpdate(IJ)V
    .locals 6
    .param p1, "streamId"    # I
    .param p2, "windowSizeIncrement"    # J

    .prologue
    .line 740
    if-nez p1, :cond_1

    .line 741
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v2

    .line 742
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-wide v4, v1, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    add-long/2addr v4, p2

    iput-wide v4, v1, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    .line 743
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 744
    monitor-exit v2

    .line 753
    :cond_0
    :goto_0
    return-void

    .line 744
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 746
    :cond_1
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p1}, Lokhttp3/internal/http2/Http2Connection;->getStream(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v0

    .line 747
    .local v0, "stream":Lokhttp3/internal/http2/Http2Stream;
    if-eqz v0, :cond_0

    .line 748
    monitor-enter v0

    .line 749
    :try_start_1
    invoke-virtual {v0, p2, p3}, Lokhttp3/internal/http2/Http2Stream;->addBytesToWriteWindow(J)V

    .line 750
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method
