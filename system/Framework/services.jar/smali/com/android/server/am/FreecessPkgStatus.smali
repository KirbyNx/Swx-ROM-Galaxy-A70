.class public Lcom/android/server/am/FreecessPkgStatus;
.super Ljava/lang/Object;
.source "FreecessPkgStatus.java"


# static fields
.field static TAG:Ljava/lang/String;


# instance fields
.field public freezedReason:Ljava/lang/String;

.field public freezedState:I

.field public freezedTime:J

.field public freezedType:I

.field public frozenPids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public isDoingGC:I

.field public isFreezed:Z

.field public isFreezedByCalm:Z

.field public isInAllowList:Z

.field public isLcdOffFreezed:Z

.field public isLcdOnFreezed:Z

.field public isOLAFFreezed:Z

.field public isOlafAllowList:Z

.field public isPendingUFZ:Z

.field public isPidFreezed:Z

.field public isUidFreezed:Z

.field public isolatedPids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public monitorPacketFlag:Z

.field public name:Ljava/lang/String;

.field public restrictNetworkFlag:Z

.field public sharedUidName:Ljava/lang/String;

.field public uid:I

.field public unfreezedReason:Ljava/lang/String;

.field public unfreezedTime:J

.field public userId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 9
    const-class v0, Lcom/android/server/am/FreecessPkgStatus;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/FreecessPkgStatus;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "userId"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 49
    iput p2, p0, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 50
    iput p3, p0, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    .line 54
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    .line 55
    iput-boolean v1, p0, Lcom/android/server/am/FreecessPkgStatus;->isPendingUFZ:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/server/am/FreecessPkgStatus;->isLcdOnFreezed:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/server/am/FreecessPkgStatus;->isOLAFFreezed:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/server/am/FreecessPkgStatus;->isLcdOffFreezed:Z

    .line 59
    iput-boolean v1, p0, Lcom/android/server/am/FreecessPkgStatus;->isInAllowList:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/server/am/FreecessPkgStatus;->isPidFreezed:Z

    .line 61
    iput-boolean v1, p0, Lcom/android/server/am/FreecessPkgStatus;->isUidFreezed:Z

    .line 62
    iput-boolean v1, p0, Lcom/android/server/am/FreecessPkgStatus;->isOlafAllowList:Z

    .line 64
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/FreecessPkgStatus;->freezedTime:J

    .line 65
    iput-wide v2, p0, Lcom/android/server/am/FreecessPkgStatus;->unfreezedTime:J

    .line 66
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 67
    iput v1, p0, Lcom/android/server/am/FreecessPkgStatus;->freezedType:I

    .line 71
    iput-object v0, p0, Lcom/android/server/am/FreecessPkgStatus;->freezedReason:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/android/server/am/FreecessPkgStatus;->unfreezedReason:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/android/server/am/FreecessPkgStatus;->isolatedPids:Ljava/util/ArrayList;

    .line 75
    iput-object v0, p0, Lcom/android/server/am/FreecessPkgStatus;->frozenPids:Ljava/util/ArrayList;

    .line 77
    iput v1, p0, Lcom/android/server/am/FreecessPkgStatus;->isDoingGC:I

    .line 78
    return-void
.end method
