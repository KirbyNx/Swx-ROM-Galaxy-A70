.class public Lcom/android/server/am/kpm/CallCount;
.super Ljava/lang/Object;
.source "CallCount.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mActivityCount:I

.field private mBroadcastCount:I

.field private mContentProviderCount:I

.field private mServiceCount:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/kpm/CallCount;->mActivityCount:I

    .line 24
    iput v0, p0, Lcom/android/server/am/kpm/CallCount;->mBroadcastCount:I

    .line 25
    iput v0, p0, Lcom/android/server/am/kpm/CallCount;->mServiceCount:I

    .line 26
    iput v0, p0, Lcom/android/server/am/kpm/CallCount;->mContentProviderCount:I

    .line 29
    return-void
.end method

.method private constructor <init>(Lcom/android/server/am/kpm/CallCount;)V
    .registers 3
    .param p1, "callCount"    # Lcom/android/server/am/kpm/CallCount;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/kpm/CallCount;->mActivityCount:I

    .line 24
    iput v0, p0, Lcom/android/server/am/kpm/CallCount;->mBroadcastCount:I

    .line 25
    iput v0, p0, Lcom/android/server/am/kpm/CallCount;->mServiceCount:I

    .line 26
    iput v0, p0, Lcom/android/server/am/kpm/CallCount;->mContentProviderCount:I

    .line 32
    iget v0, p1, Lcom/android/server/am/kpm/CallCount;->mActivityCount:I

    iput v0, p0, Lcom/android/server/am/kpm/CallCount;->mActivityCount:I

    .line 33
    iget v0, p1, Lcom/android/server/am/kpm/CallCount;->mBroadcastCount:I

    iput v0, p0, Lcom/android/server/am/kpm/CallCount;->mBroadcastCount:I

    .line 34
    iget v0, p1, Lcom/android/server/am/kpm/CallCount;->mServiceCount:I

    iput v0, p0, Lcom/android/server/am/kpm/CallCount;->mServiceCount:I

    .line 35
    iget v0, p1, Lcom/android/server/am/kpm/CallCount;->mContentProviderCount:I

    iput v0, p0, Lcom/android/server/am/kpm/CallCount;->mContentProviderCount:I

    .line 36
    return-void
.end method


# virtual methods
.method public deepCopy()Lcom/android/server/am/kpm/CallCount;
    .registers 2

    .line 54
    new-instance v0, Lcom/android/server/am/kpm/CallCount;

    invoke-direct {v0, p0}, Lcom/android/server/am/kpm/CallCount;-><init>(Lcom/android/server/am/kpm/CallCount;)V

    return-object v0
.end method

.method public getActivityCount()I
    .registers 2

    .line 50
    iget v0, p0, Lcom/android/server/am/kpm/CallCount;->mActivityCount:I

    return v0
.end method

.method public getBroadcastCount()I
    .registers 2

    .line 46
    iget v0, p0, Lcom/android/server/am/kpm/CallCount;->mBroadcastCount:I

    return v0
.end method

.method public getContentProviderCount()I
    .registers 2

    .line 83
    iget v0, p0, Lcom/android/server/am/kpm/CallCount;->mContentProviderCount:I

    return v0
.end method

.method public getServiceCount()I
    .registers 2

    .line 79
    iget v0, p0, Lcom/android/server/am/kpm/CallCount;->mServiceCount:I

    return v0
.end method

.method public getTotalCount()I
    .registers 3

    .line 87
    iget v0, p0, Lcom/android/server/am/kpm/CallCount;->mActivityCount:I

    iget v1, p0, Lcom/android/server/am/kpm/CallCount;->mBroadcastCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/am/kpm/CallCount;->mContentProviderCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/am/kpm/CallCount;->mServiceCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public incrementActivityCount()V
    .registers 2

    .line 58
    iget v0, p0, Lcom/android/server/am/kpm/CallCount;->mActivityCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/kpm/CallCount;->mActivityCount:I

    .line 59
    if-gez v0, :cond_b

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/kpm/CallCount;->mActivityCount:I

    .line 62
    :cond_b
    return-void
.end method

.method public incrementBroadcastCount()V
    .registers 2

    .line 39
    iget v0, p0, Lcom/android/server/am/kpm/CallCount;->mBroadcastCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/kpm/CallCount;->mBroadcastCount:I

    .line 40
    if-gez v0, :cond_b

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/kpm/CallCount;->mBroadcastCount:I

    .line 43
    :cond_b
    return-void
.end method

.method public incrementContentProviderCount()V
    .registers 2

    .line 65
    iget v0, p0, Lcom/android/server/am/kpm/CallCount;->mContentProviderCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/kpm/CallCount;->mContentProviderCount:I

    .line 66
    if-gez v0, :cond_b

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/kpm/CallCount;->mContentProviderCount:I

    .line 69
    :cond_b
    return-void
.end method

.method public incrementServiceCount()V
    .registers 2

    .line 72
    iget v0, p0, Lcom/android/server/am/kpm/CallCount;->mServiceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/kpm/CallCount;->mServiceCount:I

    .line 73
    if-gez v0, :cond_b

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/kpm/CallCount;->mServiceCount:I

    .line 76
    :cond_b
    return-void
.end method
