.class Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;
.super Ljava/lang/Object;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckBehindFullscreenActivityHelper"
.end annotation


# instance fields
.field private mAboveTop:Z

.field private mBehindFullscreenActivity:Z

.field private mHandleBehindFullscreenActivity:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mHandlingOccluded:Z

.field private mToCheck:Lcom/android/server/wm/ActivityRecord;

.field final synthetic this$0:Lcom/android/server/wm/ActivityStack;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/ActivityStack;)V
    .registers 2

    .line 376
    iput-object p1, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->this$0:Lcom/android/server/wm/ActivityStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "x1"    # Lcom/android/server/wm/ActivityStack$1;

    .line 376
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;-><init>(Lcom/android/server/wm/ActivityStack;)V

    return-void
.end method

.method public static synthetic lambda$hxEhv3lodv2mTq0c1tG208T2TSs(Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->processActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method private processActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 6
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "topActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 420
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mAboveTop:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    .line 421
    if-ne p1, p2, :cond_11

    .line 422
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mToCheck:Lcom/android/server/wm/ActivityRecord;

    if-ne p1, v0, :cond_f

    .line 424
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mBehindFullscreenActivity:Z

    .line 425
    return v1

    .line 427
    :cond_f
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mAboveTop:Z

    .line 429
    :cond_11
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mBehindFullscreenActivity:Z

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mBehindFullscreenActivity:Z

    .line 430
    return v2

    .line 433
    :cond_1b
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mHandlingOccluded:Z

    if-eqz v0, :cond_29

    .line 435
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mBehindFullscreenActivity:Z

    if-eqz v0, :cond_33

    .line 436
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mHandleBehindFullscreenActivity:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_33

    .line 438
    :cond_29
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mToCheck:Lcom/android/server/wm/ActivityRecord;

    if-ne p1, v0, :cond_2e

    .line 439
    return v1

    .line 440
    :cond_2e
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mBehindFullscreenActivity:Z

    if-eqz v0, :cond_33

    .line 442
    return v1

    .line 444
    :cond_33
    :goto_33
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mBehindFullscreenActivity:Z

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mBehindFullscreenActivity:Z

    .line 445
    return v2
.end method

.method private reset(Lcom/android/server/wm/ActivityRecord;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "toCheck"    # Lcom/android/server/wm/ActivityRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/ActivityRecord;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .line 385
    .local p2, "handleBehindFullscreenActivity":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/ActivityRecord;>;"
    iput-object p1, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mToCheck:Lcom/android/server/wm/ActivityRecord;

    .line 386
    iput-object p2, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mHandleBehindFullscreenActivity:Ljava/util/function/Consumer;

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mAboveTop:Z

    .line 388
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mBehindFullscreenActivity:Z

    .line 390
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->this$0:Lcom/android/server/wm/ActivityStack;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 393
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mAboveTop:Z

    .line 394
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mBehindFullscreenActivity:Z

    .line 397
    :cond_17
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mToCheck:Lcom/android/server/wm/ActivityRecord;

    if-nez v2, :cond_20

    iget-object v2, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mHandleBehindFullscreenActivity:Ljava/util/function/Consumer;

    if-eqz v2, :cond_20

    goto :goto_21

    :cond_20
    move v0, v1

    :goto_21
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mHandlingOccluded:Z

    .line 398
    return-void
.end method


# virtual methods
.method process(Lcom/android/server/wm/ActivityRecord;Ljava/util/function/Consumer;)Z
    .registers 6
    .param p1, "toCheck"    # Lcom/android/server/wm/ActivityRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/ActivityRecord;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    .line 402
    .local p2, "handleBehindFullscreenActivity":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->reset(Lcom/android/server/wm/ActivityRecord;Ljava/util/function/Consumer;)V

    .line 404
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mHandlingOccluded:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mBehindFullscreenActivity:Z

    if-eqz v0, :cond_d

    .line 405
    const/4 v0, 0x1

    return v0

    .line 408
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->this$0:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 409
    .local v0, "topActivity":Lcom/android/server/wm/ActivityRecord;
    sget-object v1, Lcom/android/server/wm/-$$Lambda$ActivityStack$CheckBehindFullscreenActivityHelper$hxEhv3lodv2mTq0c1tG208T2TSs;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$CheckBehindFullscreenActivityHelper$hxEhv3lodv2mTq0c1tG208T2TSs;

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    .line 411
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    .line 409
    invoke-static {v1, p0, v2, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainFunction(Lcom/android/internal/util/function/TriFunction;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v1

    .line 412
    .local v1, "f":Lcom/android/internal/util/function/pooled/PooledFunction;
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->this$0:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityStack;->forAllActivities(Ljava/util/function/Function;)Z

    .line 413
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycle()V

    .line 415
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->mBehindFullscreenActivity:Z

    return v2
.end method
