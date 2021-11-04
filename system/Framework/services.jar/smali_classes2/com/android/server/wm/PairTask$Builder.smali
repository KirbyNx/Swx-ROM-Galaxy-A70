.class Lcom/android/server/wm/PairTask$Builder;
.super Ljava/lang/Object;
.source "PairTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PairTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private final mId:I

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mSplitPrimaryTask:Lcom/android/server/wm/Task;

.field private mSplitSecondaryTask:Lcom/android/server/wm/Task;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;I)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "id"    # I

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    iput-object p1, p0, Lcom/android/server/wm/PairTask$Builder;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 353
    iput p2, p0, Lcom/android/server/wm/PairTask$Builder;->mId:I

    .line 354
    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/wm/PairTask;
    .registers 4

    .line 363
    iget-object v0, p0, Lcom/android/server/wm/PairTask$Builder;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, p0, Lcom/android/server/wm/PairTask$Builder;->mId:I

    invoke-static {v0, v1}, Lcom/android/server/wm/PairTask;->create(Lcom/android/server/wm/ActivityTaskManagerService;I)Lcom/android/server/wm/PairTask;

    move-result-object v0

    .line 364
    .local v0, "task":Lcom/android/server/wm/PairTask;
    iget-object v1, p0, Lcom/android/server/wm/PairTask$Builder;->mSplitPrimaryTask:Lcom/android/server/wm/Task;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/PairTask;->addPairChild(Lcom/android/server/wm/Task;I)V

    .line 365
    iget-object v1, p0, Lcom/android/server/wm/PairTask$Builder;->mSplitSecondaryTask:Lcom/android/server/wm/Task;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/PairTask;->addPairChild(Lcom/android/server/wm/Task;I)V

    .line 366
    return-object v0
.end method

.method public setPair(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)Lcom/android/server/wm/PairTask$Builder;
    .registers 3
    .param p1, "splitPrimaryTask"    # Lcom/android/server/wm/Task;
    .param p2, "splitSecondaryTask"    # Lcom/android/server/wm/Task;

    .line 357
    iput-object p1, p0, Lcom/android/server/wm/PairTask$Builder;->mSplitPrimaryTask:Lcom/android/server/wm/Task;

    .line 358
    iput-object p2, p0, Lcom/android/server/wm/PairTask$Builder;->mSplitSecondaryTask:Lcom/android/server/wm/Task;

    .line 359
    return-object p0
.end method
