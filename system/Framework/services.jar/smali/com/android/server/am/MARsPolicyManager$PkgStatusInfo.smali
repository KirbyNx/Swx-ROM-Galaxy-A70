.class Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
.super Ljava/lang/Object;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PkgStatusInfo"
.end annotation


# instance fields
.field private currentLevel:I

.field private disableReason:I

.field private disableType:I

.field private fasType:I

.field private forceStopReason:I

.field private forceStopTime:J

.field private freezedReason:Ljava/lang/String;

.field private freezedTime:J

.field private freezedTimeForLevelUp:[J

.field private isAutorunTriggeredReason:I

.field private isDisabled:Z

.field private isFASEnabled:Z

.field private maxLevel:I

.field private name:Ljava/lang/String;

.field private possibleLevel:I

.field private state:I

.field final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;

.field private uid:I

.field private unfreezedCount:I

.field private unfreezedReason:Ljava/lang/String;

.field private unfreezedTime:J

.field private userId:I


# direct methods
.method private constructor <init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;II)V
    .registers 7
    .param p2, "_packageName"    # Ljava/lang/String;
    .param p3, "_uid"    # I
    .param p4, "_userId"    # I

    .line 3394
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3395
    iput-object p2, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    .line 3396
    iput p3, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    .line 3397
    iput p4, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    .line 3398
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isAutorunTriggeredReason:I

    .line 3399
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->forceStopReason:I

    .line 3400
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->forceStopTime:J

    .line 3401
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->fasType:I

    .line 3402
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->state:I

    .line 3403
    iput v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->currentLevel:I

    .line 3404
    iput v1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->possibleLevel:I

    .line 3405
    iput v1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->maxLevel:I

    .line 3406
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isFASEnabled:Z

    .line 3407
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isDisabled:Z

    .line 3408
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableType:I

    .line 3409
    const/4 p1, 0x2

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->freezedTimeForLevelUp:[J

    .line 3410
    iput v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->unfreezedCount:I

    .line 3411
    iput v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableReason:I

    .line 3412
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$1;)V
    .registers 6
    .param p1, "x0"    # Lcom/android/server/am/MARsPolicyManager;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Lcom/android/server/am/MARsPolicyManager$1;

    .line 3371
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 3371
    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .param p1, "x1"    # J

    .line 3371
    iput-wide p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->forceStopTime:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 3371
    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->currentLevel:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .param p1, "x1"    # I

    .line 3371
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->currentLevel:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 3371
    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->possibleLevel:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .param p1, "x1"    # I

    .line 3371
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->possibleLevel:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 3371
    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->maxLevel:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .param p1, "x1"    # I

    .line 3371
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->maxLevel:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 3371
    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->fasType:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .param p1, "x1"    # I

    .line 3371
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->fasType:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 3371
    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->state:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .param p1, "x1"    # I

    .line 3371
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->state:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 3371
    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableReason:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .param p1, "x1"    # I

    .line 3371
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableReason:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 3371
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isDisabled:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .param p1, "x1"    # Z

    .line 3371
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isDisabled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 3371
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isFASEnabled:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .param p1, "x1"    # Z

    .line 3371
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isFASEnabled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 3371
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 3371
    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 3371
    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableType:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .param p1, "x1"    # I

    .line 3371
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableType:I

    return p1
.end method
