.class public Lcom/android/server/am/mars/filter/FilterChain;
.super Ljava/lang/Object;
.source "FilterChain.java"


# instance fields
.field private mFilter:Lcom/android/server/am/mars/filter/IFilter;

.field private nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/filter/IFilter;Lcom/android/server/am/mars/filter/FilterChain;)V
    .registers 4
    .param p1, "filter"    # Lcom/android/server/am/mars/filter/IFilter;
    .param p2, "nextFilter"    # Lcom/android/server/am/mars/filter/FilterChain;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 5
    iput-object v0, p0, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 8
    iput-object p1, p0, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 9
    iput-object p2, p0, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 10
    return-void
.end method

.method private getNextFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    return-object v0
.end method


# virtual methods
.method public filter(Ljava/lang/String;III)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uid"    # I
    .param p4, "policyNum"    # I

    .line 13
    iget-object v0, p0, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/am/mars/filter/IFilter;->filter(Ljava/lang/String;III)I

    move-result v0

    .line 14
    .local v0, "result":I
    if-lez v0, :cond_9

    .line 15
    return v0

    .line 17
    :cond_9
    invoke-direct {p0}, Lcom/android/server/am/mars/filter/FilterChain;->getNextFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 18
    invoke-direct {p0}, Lcom/android/server/am/mars/filter/FilterChain;->getNextFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/am/mars/filter/FilterChain;->filter(Ljava/lang/String;III)I

    move-result v1

    return v1

    .line 21
    :cond_18
    const/4 v1, 0x0

    return v1
.end method
