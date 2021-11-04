.class public Lcom/samsung/android/server/audio/FoldStateHelper;
.super Ljava/lang/Object;
.source "FoldStateHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AS.FoldStateHelper"

.field private static sInstance:Lcom/samsung/android/server/audio/FoldStateHelper;


# instance fields
.field private mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/audio/FoldStateHelper;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    .line 34
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/FoldStateHelper;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 37
    sget-object v0, Lcom/samsung/android/server/audio/FoldStateHelper;->sInstance:Lcom/samsung/android/server/audio/FoldStateHelper;

    if-nez v0, :cond_b

    .line 38
    new-instance v0, Lcom/samsung/android/server/audio/FoldStateHelper;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/FoldStateHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/server/audio/FoldStateHelper;->sInstance:Lcom/samsung/android/server/audio/FoldStateHelper;

    .line 40
    :cond_b
    sget-object v0, Lcom/samsung/android/server/audio/FoldStateHelper;->sInstance:Lcom/samsung/android/server/audio/FoldStateHelper;

    return-object v0
.end method

.method private registerFoldStateListener()V
    .registers 4

    .line 56
    iget-object v0, p0, Lcom/samsung/android/server/audio/FoldStateHelper;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    new-instance v1, Lcom/samsung/android/server/audio/FoldStateHelper$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/audio/FoldStateHelper$1;-><init>(Lcom/samsung/android/server/audio/FoldStateHelper;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    .line 68
    return-void
.end method


# virtual methods
.method public isFolded()Z
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/samsung/android/server/audio/FoldStateHelper;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 49
    const/4 v0, 0x1

    return v0

    .line 51
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public registerListener()V
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/server/audio/FoldStateHelper;->registerFoldStateListener()V

    .line 45
    return-void
.end method
