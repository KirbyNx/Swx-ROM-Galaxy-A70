.class public Lcom/android/server/am/mars/filter/FilterManager;
.super Ljava/lang/Object;
.source "FilterManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    .line 15
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterChainFactory;

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/mars/filter/FilterManager$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/am/mars/filter/FilterManager$1;

    .line 10
    invoke-direct {p0}, Lcom/android/server/am/mars/filter/FilterManager;-><init>()V

    return-void
.end method

.method private filter(ILjava/lang/String;II)I
    .registers 9
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "uid"    # I

    .line 43
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 44
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1c

    .line 45
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v0

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3, v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 46
    return v1

    .line 49
    :cond_1c
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterChainFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getFilterChain(I)Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v0

    .line 50
    .local v0, "fc":Lcom/android/server/am/mars/filter/FilterChain;
    if-eqz v0, :cond_2b

    .line 51
    invoke-virtual {v0, p2, p3, p4, p1}, Lcom/android/server/am/mars/filter/FilterChain;->filter(Ljava/lang/String;III)I

    move-result v1

    return v1

    .line 53
    :cond_2b
    return v1
.end method

.method private filterForAngryBird(Ljava/lang/String;II)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uid"    # I

    .line 117
    const/16 v0, 0xe

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filter(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private filterForAppLocker(Ljava/lang/String;II)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uid"    # I

    .line 65
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filter(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private filterForAutoRun(Ljava/lang/String;II)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uid"    # I

    .line 69
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filter(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private filterForBlockList(Ljava/lang/String;II)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uid"    # I

    .line 113
    const/16 v0, 0xd

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filter(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private filterForCalmMode(Ljava/lang/String;II)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uid"    # I

    .line 93
    const/16 v0, 0x12

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filter(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private filterForDBUpdate(Ljava/lang/String;II)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uid"    # I

    .line 97
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filter(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private filterForDisabler(Ljava/lang/String;II)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uid"    # I

    .line 85
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filter(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private filterForEmergencyKill(Ljava/lang/String;II)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uid"    # I

    .line 105
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filter(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private filterForForce(Ljava/lang/String;II)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uid"    # I

    .line 61
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filter(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private filterForFreecess(Ljava/lang/String;II)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uid"    # I

    .line 73
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filter(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private filterForGame(Ljava/lang/String;II)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uid"    # I

    .line 89
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filter(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private filterForLevelChange(Ljava/lang/String;II)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uid"    # I

    .line 109
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filter(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private filterForOLAF(Ljava/lang/String;II)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uid"    # I

    .line 101
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filter(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private filterForRageBird(Ljava/lang/String;II)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uid"    # I

    .line 121
    const/16 v0, 0xf

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filter(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private filterForSBike(Ljava/lang/String;II)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uid"    # I

    .line 81
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filter(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private filterForUDS(Ljava/lang/String;II)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uid"    # I

    .line 77
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filter(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/FilterManager;
    .registers 1

    .line 23
    # getter for: Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->access$100()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .registers 2

    .line 38
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/filter/FilterFactory;->deInit()V

    .line 39
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterChainFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->deInit()V

    .line 40
    return-void
.end method

.method public filterForChimera(Ljava/lang/String;II)I
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uid"    # I

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "type":I
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_2
    const/16 v2, 0x16

    if-ge v1, v2, :cond_26

    .line 128
    const/16 v2, 0x8

    if-ne v1, v2, :cond_b

    .line 129
    goto :goto_23

    .line 132
    :cond_b
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    .line 133
    .local v2, "f":Lcom/android/server/am/mars/filter/IFilter;
    if-eqz v2, :cond_23

    const/16 v3, 0x11

    invoke-interface {v2, p1, p2, p3, v3}, Lcom/android/server/am/mars/filter/IFilter;->filter(Ljava/lang/String;III)I

    move-result v3

    if-eqz v3, :cond_23

    .line 134
    add-int/lit8 v3, v1, -0x1

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v0, v3

    .line 127
    .end local v2    # "f":Lcom/android/server/am/mars/filter/IFilter;
    :cond_23
    :goto_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 137
    .end local v1    # "i":I
    :cond_26
    return v0
.end method

.method public filterForChimera(Ljava/lang/String;III)I
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uid"    # I
    .param p4, "specificFilter"    # I

    .line 141
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v0

    .line 142
    .local v0, "f":Lcom/android/server/am/mars/filter/IFilter;
    if-eqz v0, :cond_14

    const/16 v1, 0x11

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/android/server/am/mars/filter/IFilter;->filter(Ljava/lang/String;III)I

    move-result v1

    if-eqz v1, :cond_14

    .line 143
    const/4 v1, 0x1

    return v1

    .line 146
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public filterForSpecificPolicy(ILjava/lang/String;II)I
    .registers 6
    .param p1, "idx"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "uid"    # I

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/mars/filter/FilterManager;->filter(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/FilterManager;->setContext(Landroid/content/Context;)V

    .line 32
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/mars/filter/FilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->init(Landroid/content/Context;)V

    .line 33
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterChainFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/mars/filter/FilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainFactory;->init(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    iput-object p1, p0, Lcom/android/server/am/mars/filter/FilterManager;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method
