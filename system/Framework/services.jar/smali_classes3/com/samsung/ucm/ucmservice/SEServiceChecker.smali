.class public Lcom/samsung/ucm/ucmservice/SEServiceChecker;
.super Ljava/lang/Object;
.source "SEServiceChecker.java"

# interfaces
.implements Landroid/se/omapi/SEService$OnConnectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/ucmservice/SEServiceChecker$SynchronousExecutor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MySEServiceCallback"


# instance fields
.field private mSeService:Landroid/se/omapi/SEService;

.field serviceNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/SEServiceChecker;->mSeService:Landroid/se/omapi/SEService;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/SEServiceChecker;->serviceNameList:Ljava/util/List;

    .line 19
    new-instance v0, Landroid/se/omapi/SEService;

    new-instance v1, Lcom/samsung/ucm/ucmservice/SEServiceChecker$SynchronousExecutor;

    invoke-direct {v1}, Lcom/samsung/ucm/ucmservice/SEServiceChecker$SynchronousExecutor;-><init>()V

    invoke-direct {v0, p1, v1, p0}, Landroid/se/omapi/SEService;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/se/omapi/SEService$OnConnectedListener;)V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/SEServiceChecker;->mSeService:Landroid/se/omapi/SEService;

    .line 20
    return-void
.end method


# virtual methods
.method public existSEService(Ljava/lang/String;)Z
    .registers 13
    .param p1, "storageType"    # Ljava/lang/String;

    .line 23
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/SEServiceChecker;->serviceNameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 24
    .local v0, "serviceCount":I
    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "MySEServiceCallback"

    if-nez v0, :cond_11

    .line 25
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return v1

    .line 29
    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 30
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_16
    if-ge v4, v0, :cond_a7

    .line 31
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/SEServiceChecker;->serviceNameList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 32
    .local v5, "name":Ljava/lang/String;
    if-nez v5, :cond_29

    .line 33
    const-string v6, "name is empty"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    goto/16 :goto_a3

    .line 37
    :cond_29
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, " exist"

    const-string v8, "Storage "

    const/4 v9, 0x1

    if-ne v6, v9, :cond_4e

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return v9

    .line 42
    :cond_4e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "1"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 43
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v9, :cond_7f

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return v9

    .line 48
    :cond_7f
    invoke-virtual {v5, v10, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 49
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v9, :cond_a3

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return v9

    .line 30
    .end local v5    # "name":Ljava/lang/String;
    :cond_a3
    :goto_a3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_16

    .line 54
    .end local v4    # "i":I
    :cond_a7
    return v1
.end method

.method public onConnected()V
    .registers 9

    .line 59
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/SEServiceChecker;->mSeService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->getReaders()[Landroid/se/omapi/Reader;

    move-result-object v0

    .line 60
    .local v0, "readers":[Landroid/se/omapi/Reader;
    array-length v1, v0

    .line 61
    .local v1, "count":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reader count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MySEServiceCallback"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    if-ge v2, v1, :cond_5b

    .line 63
    aget-object v4, v0, v2

    .line 64
    .local v4, "reader":Landroid/se/omapi/Reader;
    if-nez v4, :cond_2a

    .line 65
    const-string v5, "reader is null"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    goto :goto_58

    .line 68
    :cond_2a
    invoke-virtual {v4}, Landroid/se/omapi/Reader;->getName()Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_52

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_38

    goto :goto_52

    .line 74
    :cond_38
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "name : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/SEServiceChecker;->serviceNameList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 70
    :cond_52
    :goto_52
    const-string v6, "name is null"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    nop

    .line 62
    .end local v4    # "reader":Landroid/se/omapi/Reader;
    .end local v5    # "name":Ljava/lang/String;
    :goto_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 77
    .end local v2    # "i":I
    :cond_5b
    return-void
.end method
