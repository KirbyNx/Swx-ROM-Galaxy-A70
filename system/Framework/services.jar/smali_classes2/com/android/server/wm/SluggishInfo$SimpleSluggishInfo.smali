.class public Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;
.super Ljava/lang/Object;
.source "SluggishInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SluggishInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleSluggishInfo"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mDha:[I

.field mMeminfo:[J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 1006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1003
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;->mMeminfo:[J

    .line 1004
    iput-object v0, p0, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;->mDha:[I

    .line 1008
    # getter for: Lcom/android/server/wm/SluggishInfo;->DEBUG:Z
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->access$000()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1009
    sget-object v0, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;->TAG:Ljava/lang/String;

    const-string v1, "SimpleSluggishInfo()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :cond_15
    # invokes: Lcom/android/server/wm/SluggishInfo;->getCurrentMeminfo()[J
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->access$600()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;->mMeminfo:[J

    .line 1012
    # invokes: Lcom/android/server/wm/SluggishInfo;->getCurrentSimpleDHAStat()[I
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->access$700()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;->mDha:[I

    .line 1013
    return-void
.end method

.method constructor <init>(JJJII)V
    .registers 13
    .param p1, "memFree"    # J
    .param p3, "cached"    # J
    .param p5, "swapFree"    # J
    .param p7, "numCached"    # I
    .param p8, "numEmpty"    # I

    .line 1015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1003
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;->mMeminfo:[J

    .line 1004
    iput-object v0, p0, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;->mDha:[I

    .line 1017
    # getter for: Lcom/android/server/wm/SluggishInfo;->DEBUG:Z
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->access$000()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1018
    sget-object v0, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;->TAG:Ljava/lang/String;

    const-string v1, "SimpleSluggishInfo()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :cond_15
    const/4 v0, 0x3

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 v2, 0x1

    aput-wide p3, v0, v2

    const/4 v3, 0x2

    aput-wide p5, v0, v3

    iput-object v0, p0, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;->mMeminfo:[J

    .line 1021
    new-array v0, v3, [I

    aput p7, v0, v1

    aput p8, v0, v2

    iput-object v0, p0, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;->mDha:[I

    .line 1022
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 11

    .line 1027
    # getter for: Lcom/android/server/wm/SluggishInfo;->DEBUG:Z
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->access$000()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1028
    sget-object v0, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "toString()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1032
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;->mMeminfo:[J

    const/4 v2, 0x0

    const-string v3, "/"

    if-eqz v1, :cond_2d

    .line 1033
    array-length v4, v1

    move v5, v2

    :goto_1c
    if-ge v5, v4, :cond_2d

    aget-wide v6, v1, v5

    .line 1034
    .local v6, "meminfo":J
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    const-wide/16 v8, 0x400

    div-long v8, v6, v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1033
    .end local v6    # "meminfo":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 1039
    :cond_2d
    iget-object v1, p0, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;->mDha:[I

    if-eqz v1, :cond_3f

    .line 1040
    array-length v4, v1

    :goto_32
    if-ge v2, v4, :cond_3f

    aget v5, v1, v2

    .line 1041
    .local v5, "dha":I
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1040
    .end local v5    # "dha":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 1046
    :cond_3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1047
    .local v1, "str":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1049
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 1050
    const-string/jumbo v1, "null"

    .line 1052
    :cond_52
    return-object v1
.end method
