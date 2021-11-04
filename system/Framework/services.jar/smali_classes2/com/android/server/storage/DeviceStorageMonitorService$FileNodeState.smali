.class Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;
.super Ljava/lang/Object;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileNodeState"
.end annotation


# static fields
.field private static final LEVEL_FN_FULL:I = 0x2

.field private static final LEVEL_FN_LOW:I = 0x1

.field private static final LEVEL_FN_NORMAL:I = 0x0

.field private static final LEVEL_FN_UNKNOWN:I = -0x1


# instance fields
.field public level:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;->level:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService$1;

    .line 202
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;-><init>()V

    return-void
.end method

.method static synthetic access$500(I)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # I

    .line 202
    invoke-static {p0}, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;->levelToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(III)Z
    .registers 4
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 202
    invoke-static {p0, p1, p2}, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;->isEntering(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(III)Z
    .registers 4
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 202
    invoke-static {p0, p1, p2}, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;->isLeaving(III)Z

    move-result v0

    return v0
.end method

.method private static isEntering(III)Z
    .registers 4
    .param p0, "level"    # I
    .param p1, "oldLevel"    # I
    .param p2, "newLevel"    # I

    .line 219
    if-lt p2, p0, :cond_9

    if-lt p1, p0, :cond_7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    :cond_7
    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private static isLeaving(III)Z
    .registers 4
    .param p0, "level"    # I
    .param p1, "oldLevel"    # I
    .param p2, "newLevel"    # I

    .line 230
    if-ge p2, p0, :cond_9

    if-ge p1, p0, :cond_7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    :cond_7
    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private static levelToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "level"    # I

    .line 234
    const/4 v0, -0x1

    if-eq p0, v0, :cond_19

    if-eqz p0, :cond_16

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_10

    .line 239
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 238
    :cond_10
    const-string v0, "FN_FULL"

    return-object v0

    .line 237
    :cond_13
    const-string v0, "FN_LOW"

    return-object v0

    .line 236
    :cond_16
    const-string v0, "FN_NORMAL"

    return-object v0

    .line 235
    :cond_19
    const-string v0, "FN_UNKNOWN"

    return-object v0
.end method
