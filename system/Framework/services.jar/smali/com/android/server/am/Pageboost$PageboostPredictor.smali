.class final Lcom/android/server/am/Pageboost$PageboostPredictor;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PageboostPredictor"
.end annotation


# static fields
.field private static final MAX_TARGET_PREDO_APP_NUM:I = 0x3

.field private static mAppSelection:Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1027
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/Pageboost$PageboostPredictor;->mAppSelection:Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 1029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1031
    new-instance v0, Lcom/android/server/am/Pageboost$LRUPolicy;

    invoke-direct {v0}, Lcom/android/server/am/Pageboost$LRUPolicy;-><init>()V

    sput-object v0, Lcom/android/server/am/Pageboost$PageboostPredictor;->mAppSelection:Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;

    .line 1032
    return-void
.end method

.method public static haltPredict()V
    .registers 2

    .line 1075
    # getter for: Lcom/android/server/am/Pageboost;->PAGEBOOST_ACTIVE_LAUNCH_ENABLED:Z
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1076
    # getter for: Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1500()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/server/am/Pageboost$PageboostHandler;->removeMessages(I)V

    .line 1080
    :cond_f
    # getter for: Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1500()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/am/Pageboost$PageboostHandler;->removeMessages(I)V

    .line 1082
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/am/Pageboost$PageboostdProxy;->executeCmd(ILjava/lang/String;)V

    .line 1083
    return-void
.end method


# virtual methods
.method public checkPredictHit(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)Z
    .registers 4
    .param p1, "AppExecuted"    # Lcom/android/server/am/Pageboost$PageboostAppInfo;
    .param p2, "launchtime"    # I

    .line 1064
    if-gtz p2, :cond_4

    .line 1065
    const/4 v0, 0x0

    return v0

    .line 1067
    :cond_4
    sget-object v0, Lcom/android/server/am/Pageboost$PageboostPredictor;->mAppSelection:Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->judgePredict(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)Z

    move-result v0

    return v0
.end method

.method public finalizePredict()V
    .registers 2

    .line 1071
    sget-object v0, Lcom/android/server/am/Pageboost$PageboostPredictor;->mAppSelection:Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->finalizePredict()V

    .line 1072
    return-void
.end method

.method public predict(Lcom/android/server/am/Pageboost$PageboostAppList;)V
    .registers 11
    .param p1, "pageInfo"    # Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 1035
    const/4 v0, 0x0

    .line 1036
    .local v0, "memtarget":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    const/4 v1, 0x0

    .line 1039
    .local v1, "max":I
    sget-object v2, Lcom/android/server/am/Pageboost$PageboostPredictor;->mAppSelection:Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;

    const/4 v3, 0x3

    invoke-virtual {v2, p1, v3}, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->appFilter(Lcom/android/server/am/Pageboost$PageboostAppList;I)Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v2

    .line 1042
    .local v2, "filtered":Lcom/android/server/am/Pageboost$PageboostAppList;
    const-string v3, ""

    .line 1043
    .local v3, "str":Ljava/lang/String;
    iget-object v4, v2, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v4

    .line 1044
    :try_start_e
    invoke-virtual {v2}, Lcom/android/server/am/Pageboost$PageboostAppList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_48

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 1045
    .local v6, "iApp":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    invoke-virtual {v6}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->execute()Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 1046
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 1048
    :cond_3b
    invoke-virtual {v6}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getMemUsage()Lcom/android/server/am/Pageboost$MemUsage;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/Pageboost$MemUsage;->getTotal()I

    move-result v7

    .line 1049
    .local v7, "memprep":I
    if-lt v7, v1, :cond_47

    .line 1050
    move-object v0, v6

    .line 1051
    move v1, v7

    .line 1053
    .end local v6    # "iApp":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    .end local v7    # "memprep":I
    :cond_47
    goto :goto_12

    .line 1054
    :cond_48
    monitor-exit v4
    :try_end_49
    .catchall {:try_start_e .. :try_end_49} :catchall_73

    .line 1056
    if-eqz v0, :cond_4e

    .line 1057
    invoke-static {v0}, Lcom/android/server/am/Pageboost$MemReclaimer;->reclaimMem(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    .line 1060
    :cond_4e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prefetch,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",MemPrep,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_65

    iget-object v5, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    goto :goto_68

    :cond_65
    const-string/jumbo v5, "n/a"

    :goto_68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/Pageboost$VramdiskLogger;->add(Ljava/lang/String;)V

    .line 1061
    return-void

    .line 1054
    :catchall_73
    move-exception v5

    :try_start_74
    monitor-exit v4
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw v5
.end method
