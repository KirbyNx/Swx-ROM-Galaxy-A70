.class Lcom/android/server/am/KillPolicyManager$LmkdCountReader;
.super Ljava/lang/Object;
.source "KillPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/KillPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LmkdCountReader"
.end annotation


# instance fields
.field bServiceCountOfLmkd:J

.field cachedMinCountOfLmkd:J

.field homeToPercCountOfLmkd:J

.field pickedCountOfLmkd:J

.field previousCountOfLmkd:J

.field seedbedCountOfLmkd:J

.field final synthetic this$0:Lcom/android/server/am/KillPolicyManager;

.field totalCountOfLmkd:J

.field visToFgCountOfLmkd:J


# direct methods
.method constructor <init>(Lcom/android/server/am/KillPolicyManager;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/am/KillPolicyManager;

    .line 1691
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1694
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    .line 1695
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    .line 1696
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->seedbedCountOfLmkd:J

    .line 1697
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    .line 1698
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    .line 1699
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    .line 1700
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->homeToPercCountOfLmkd:J

    .line 1701
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->visToFgCountOfLmkd:J

    return-void
.end method

.method private getKillCountForAdjRange(IIJ)J
    .registers 8
    .param p1, "min_oom_adj"    # I
    .param p2, "max_oom_adj"    # I
    .param p3, "defaultCount"    # J

    .line 1704
    invoke-static {p1, p2}, Lcom/android/server/am/ProcessList;->getLmkdKillCount(II)Ljava/lang/Integer;

    move-result-object v0

    .line 1705
    .local v0, "count":Ljava/lang/Integer;
    if-nez v0, :cond_f

    .line 1706
    const-string v1, "ActivityManager"

    const-string/jumbo v2, "getKillCountForAdjRange() - getLmkdKillCount returns null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    return-wide p3

    .line 1709
    :cond_f
    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v1

    return-wide v1
.end method


# virtual methods
.method readLmkdKillCount()V
    .registers 6

    .line 1713
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    const/4 v2, 0x0

    const/16 v3, 0x3e7

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->getKillCountForAdjRange(IIJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    .line 1715
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    const/16 v3, 0x384

    invoke-direct {p0, v3, v3, v0, v1}, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->getKillCountForAdjRange(IIJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    .line 1717
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->seedbedCountOfLmkd:J

    const/16 v3, 0x353

    const/16 v4, 0x35c

    invoke-direct {p0, v3, v4, v0, v1}, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->getKillCountForAdjRange(IIJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->seedbedCountOfLmkd:J

    .line 1719
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    const/16 v3, 0x321

    const/16 v4, 0x352

    invoke-direct {p0, v3, v4, v0, v1}, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->getKillCountForAdjRange(IIJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    .line 1721
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    const/16 v3, 0x2bd

    const/16 v4, 0x320

    invoke-direct {p0, v3, v4, v0, v1}, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->getKillCountForAdjRange(IIJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    .line 1723
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    const/16 v3, 0x259

    const/16 v4, 0x2bc

    invoke-direct {p0, v3, v4, v0, v1}, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->getKillCountForAdjRange(IIJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    .line 1725
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->homeToPercCountOfLmkd:J

    const/16 v3, 0xc8

    const/16 v4, 0x258

    invoke-direct {p0, v3, v4, v0, v1}, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->getKillCountForAdjRange(IIJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->homeToPercCountOfLmkd:J

    .line 1727
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->visToFgCountOfLmkd:J

    const/16 v3, 0xc7

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->getKillCountForAdjRange(IIJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->visToFgCountOfLmkd:J

    .line 1729
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_af

    .line 1730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "readLmkdKillCount() : (E : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", Pr : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", Sv : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", Pi : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", Sb : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->seedbedCountOfLmkd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", Cm : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager_KPM"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    :cond_af
    return-void
.end method
