.class Lcom/android/server/am/KillPolicyManager$LmkdCounter;
.super Ljava/lang/Object;
.source "KillPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/KillPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LmkdCounter"
.end annotation


# instance fields
.field bServiceKillOccurredCount:I

.field cur_bServiceKillCount:J

.field cur_cachedMinKillCount:J

.field cur_homeToPercKillCount:J

.field cur_pickedKillCount:J

.field cur_previousKillCount:J

.field cur_seedbedKillCount:J

.field cur_totalKillCount:J

.field cur_visToFgKillCount:J

.field prevRead_bServiceCountOfLmkd:J

.field prevRead_cachedMinCountOfLmkd:J

.field prevRead_homeToPercCountOfLmkd:J

.field prevRead_pickedCountOfLmkd:J

.field prevRead_previousCountOfLmkd:J

.field prevRead_seedbedCountOfLmkd:J

.field prevRead_totalCountOfLmkd:J

.field prevRead_visToFgCountOfLmkd:J

.field previousKillOccurredCount:I

.field final synthetic this$0:Lcom/android/server/am/KillPolicyManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/KillPolicyManager;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/am/KillPolicyManager;

    .line 1739
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1746
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cur_totalKillCount:J

    .line 1747
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cur_cachedMinKillCount:J

    .line 1748
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cur_seedbedKillCount:J

    .line 1749
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cur_pickedKillCount:J

    .line 1750
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cur_bServiceKillCount:J

    .line 1751
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cur_previousKillCount:J

    .line 1752
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cur_homeToPercKillCount:J

    .line 1753
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cur_visToFgKillCount:J

    .line 1759
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevRead_totalCountOfLmkd:J

    .line 1760
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevRead_cachedMinCountOfLmkd:J

    .line 1761
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevRead_seedbedCountOfLmkd:J

    .line 1762
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevRead_pickedCountOfLmkd:J

    .line 1763
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevRead_bServiceCountOfLmkd:J

    .line 1764
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevRead_previousCountOfLmkd:J

    .line 1765
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevRead_homeToPercCountOfLmkd:J

    .line 1766
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevRead_visToFgCountOfLmkd:J

    .line 1772
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillOccurredCount:I

    .line 1773
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillOccurredCount:I

    return-void
.end method


# virtual methods
.method getCurrentLmkdKillCountByADJ(Lcom/android/server/am/KillPolicyManager$LmkdCountReader;Z)V
    .registers 10
    .param p1, "mLmkdReader"    # Lcom/android/server/am/KillPolicyManager$LmkdCountReader;
    .param p2, "isAppCycleFinished"    # Z

    .line 1776
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    const-string v1, ")"

    const-string v2, "ActivityManager_KPM"

    if-eqz v0, :cond_54

    .line 1777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prevKillCount : (pE : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevRead_totalCountOfLmkd:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", pPr : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevRead_previousCountOfLmkd:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", pSv : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevRead_bServiceCountOfLmkd:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", pPi : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevRead_pickedCountOfLmkd:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", pSb : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevRead_seedbedCountOfLmkd:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", pCm : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevRead_cachedMinCountOfLmkd:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    :cond_54
    iget-wide v3, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    iget-wide v5, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevRead_totalCountOfLmkd:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cur_totalKillCount:J

    .line 1786
    iget-wide v3, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    iget-wide v5, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevRead_cachedMinCountOfLmkd:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cur_cachedMinKillCount:J

    .line 1787
    iget-wide v3, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->seedbedCountOfLmkd:J

    iget-wide v5, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevRead_seedbedCountOfLmkd:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cur_seedbedKillCount:J

    .line 1788
    iget-wide v3, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    iget-wide v5, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevRead_pickedCountOfLmkd:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cur_pickedKillCount:J

    .line 1789
    iget-wide v3, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    iget-wide v5, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevRead_bServiceCountOfLmkd:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cur_bServiceKillCount:J

    .line 1790
    iget-wide v3, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    iget-wide v5, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevRead_previousCountOfLmkd:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cur_previousKillCount:J

    .line 1792
    iget-wide v3, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->homeToPercCountOfLmkd:J

    iget-wide v5, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevRead_homeToPercCountOfLmkd:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cur_homeToPercKillCount:J

    .line 1793
    iget-wide v3, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->visToFgCountOfLmkd:J

    iget-wide v5, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevRead_visToFgCountOfLmkd:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cur_visToFgKillCount:J

    .line 1795
    iget-wide v3, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cur_previousKillCount:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_a7

    if-nez p2, :cond_a7

    .line 1796
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillOccurredCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillOccurredCount:I

    .line 1797
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->this$0:Lcom/android/server/am/KillPolicyManager;

    # getter for: Lcom/android/server/am/KillPolicyManager;->mprevProcess:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->access$3500(Lcom/android/server/am/KillPolicyManager;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2bc

    # invokes: Lcom/android/server/am/KillPolicyManager;->markKilledPackage(Ljava/lang/String;I)V
    invoke-static {v0, v3, v4}, Lcom/android/server/am/KillPolicyManager;->access$3600(Lcom/android/server/am/KillPolicyManager;Ljava/lang/String;I)V

    .line 1799
    :cond_a7
    iget-wide v3, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cur_bServiceKillCount:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_c0

    if-nez p2, :cond_c0

    .line 1800
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillOccurredCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillOccurredCount:I

    .line 1801
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->this$0:Lcom/android/server/am/KillPolicyManager;

    # getter for: Lcom/android/server/am/KillPolicyManager;->mprevProcess:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->access$3500(Lcom/android/server/am/KillPolicyManager;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x320

    # invokes: Lcom/android/server/am/KillPolicyManager;->markKilledPackage(Ljava/lang/String;I)V
    invoke-static {v0, v3, v4}, Lcom/android/server/am/KillPolicyManager;->access$3600(Lcom/android/server/am/KillPolicyManager;Ljava/lang/String;I)V

    .line 1803
    :cond_c0
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_10f

    .line 1804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentKillCount : (cE : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cur_totalKillCount:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", cPr : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cur_previousKillCount:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", cSv : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cur_bServiceKillCount:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", cPi : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cur_pickedKillCount:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", cSb : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cur_seedbedKillCount:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", cCm : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cur_cachedMinKillCount:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    :cond_10f
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevRead_totalCountOfLmkd:J

    .line 1811
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevRead_cachedMinCountOfLmkd:J

    .line 1812
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->seedbedCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevRead_seedbedCountOfLmkd:J

    .line 1813
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevRead_pickedCountOfLmkd:J

    .line 1814
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevRead_bServiceCountOfLmkd:J

    .line 1815
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevRead_previousCountOfLmkd:J

    .line 1817
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->homeToPercCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevRead_homeToPercCountOfLmkd:J

    .line 1818
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->visToFgCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevRead_visToFgCountOfLmkd:J

    .line 1819
    return-void
.end method

.method resetLmkdKillCount()V
    .registers 3

    .line 1822
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cur_totalKillCount:J

    .line 1823
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cur_bServiceKillCount:J

    .line 1824
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cur_pickedKillCount:J

    .line 1825
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cur_seedbedKillCount:J

    .line 1826
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cur_previousKillCount:J

    .line 1827
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cur_homeToPercKillCount:J

    .line 1828
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cur_visToFgKillCount:J

    .line 1829
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillOccurredCount:I

    .line 1830
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillOccurredCount:I

    .line 1831
    return-void
.end method
