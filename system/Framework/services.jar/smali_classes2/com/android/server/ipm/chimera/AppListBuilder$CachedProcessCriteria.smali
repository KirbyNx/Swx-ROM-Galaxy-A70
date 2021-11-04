.class Lcom/android/server/ipm/chimera/AppListBuilder$CachedProcessCriteria;
.super Ljava/lang/Object;
.source "AppListBuilder.java"

# interfaces
.implements Lcom/android/server/ipm/chimera/AppListBuilder$ChimeraAppInfoCriteria;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/chimera/AppListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CachedProcessCriteria"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ipm/chimera/AppListBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/ipm/chimera/AppListBuilder;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ipm/chimera/AppListBuilder;

    .line 288
    iput-object p1, p0, Lcom/android/server/ipm/chimera/AppListBuilder$CachedProcessCriteria;->this$0:Lcom/android/server/ipm/chimera/AppListBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)Z
    .registers 3
    .param p1, "chimeraAppInfo"    # Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 292
    iget-object v0, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    if-nez v0, :cond_e

    .line 293
    iget-object v0, p0, Lcom/android/server/ipm/chimera/AppListBuilder$CachedProcessCriteria;->this$0:Lcom/android/server/ipm/chimera/AppListBuilder;

    iget-object v0, v0, Lcom/android/server/ipm/chimera/AppListBuilder;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-static {p1, v0}, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->create(Lcom/android/server/ipm/chimera/ChimeraAppInfo;Lcom/android/server/ipm/chimera/SystemRepository;)Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    .line 296
    :cond_e
    iget-object v0, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    if-eqz v0, :cond_1d

    iget-object v0, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    invoke-virtual {v0}, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->hasCachedProcess()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1d

    .line 300
    :cond_1b
    const/4 v0, 0x0

    return v0

    .line 297
    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    return v0
.end method
