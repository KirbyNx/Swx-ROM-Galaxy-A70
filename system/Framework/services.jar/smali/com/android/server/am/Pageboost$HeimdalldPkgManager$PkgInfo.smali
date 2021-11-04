.class Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost$HeimdalldPkgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PkgInfo"
.end annotation


# instance fields
.field public glbKillCnt:I

.field public memUsage:I

.field public pkgName:Ljava/lang/String;

.field public realKillCnt:I

.field public specKillCnt:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "savedDataStr"    # Ljava/lang/String;

    .line 2601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2602
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2603
    .local v0, "arr":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->pkgName:Ljava/lang/String;

    .line 2604
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->memUsage:I

    .line 2605
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->specKillCnt:I

    .line 2606
    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->glbKillCnt:I

    .line 2607
    const/4 v1, 0x4

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->realKillCnt:I

    .line 2608
    return-void
.end method

.method constructor <init>(Ljava/lang/String;IZZ)V
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "memUsage"    # I
    .param p3, "isGlbKill"    # Z
    .param p4, "isRealKill"    # Z

    .line 2593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2594
    iput-object p1, p0, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->pkgName:Ljava/lang/String;

    .line 2595
    iput p2, p0, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->memUsage:I

    .line 2596
    xor-int/lit8 v0, p3, 0x1

    iput v0, p0, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->specKillCnt:I

    .line 2597
    iput p3, p0, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->glbKillCnt:I

    .line 2598
    iput p4, p0, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->realKillCnt:I

    .line 2599
    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;

    .line 2586
    invoke-direct {p0}, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->toJsonData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toJsonData()Ljava/lang/String;
    .registers 3

    .line 2632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"pkgName\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"memUsage\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->memUsage:I

    .line 2633
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"specKillCnt\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->specKillCnt:I

    .line 2634
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"glbKillCnt\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->glbKillCnt:I

    .line 2635
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"realKillCnt\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->realKillCnt:I

    .line 2636
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2632
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "in"    # Ljava/lang/Object;

    .line 2612
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 2613
    :cond_4
    instance-of v1, p1, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;

    if-eqz v1, :cond_14

    iget-object v0, p0, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->pkgName:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;

    iget-object v1, v1, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 2614
    :cond_14
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 2619
    iget-object v0, p0, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 2624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->memUsage:I

    .line 2625
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->specKillCnt:I

    .line 2626
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->glbKillCnt:I

    .line 2627
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->realKillCnt:I

    .line 2628
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2624
    return-object v0
.end method
