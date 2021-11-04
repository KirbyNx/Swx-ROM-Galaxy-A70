.class Lcom/android/server/ipm/chimera/AppListBuilder$RecycledPidCriteria;
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
    name = "RecycledPidCriteria"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ipm/chimera/AppListBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/ipm/chimera/AppListBuilder;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ipm/chimera/AppListBuilder;

    .line 271
    iput-object p1, p0, Lcom/android/server/ipm/chimera/AppListBuilder$RecycledPidCriteria;->this$0:Lcom/android/server/ipm/chimera/AppListBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)Z
    .registers 7
    .param p1, "chimeraAppInfo"    # Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, "isReused":Z
    iget-object v1, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;

    .line 277
    .local v2, "proc":Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
    iget-object v3, p0, Lcom/android/server/ipm/chimera/AppListBuilder$RecycledPidCriteria;->this$0:Lcom/android/server/ipm/chimera/AppListBuilder;

    iget-object v3, v3, Lcom/android/server/ipm/chimera/AppListBuilder;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget v4, v2, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-interface {v3, v4}, Lcom/android/server/ipm/chimera/SystemRepository;->isThreadGroupLeader(I)Z

    move-result v3

    if-nez v3, :cond_47

    .line 278
    iget-object v1, p0, Lcom/android/server/ipm/chimera/AppListBuilder$RecycledPidCriteria;->this$0:Lcom/android/server/ipm/chimera/AppListBuilder;

    iget-object v1, v1, Lcom/android/server/ipm/chimera/AppListBuilder;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipped by Thread Group Leader condition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppListBuilder"

    invoke-interface {v1, v4, v3}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const/4 v0, 0x1

    .line 280
    goto :goto_48

    .line 282
    .end local v2    # "proc":Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
    :cond_47
    goto :goto_7

    .line 284
    :cond_48
    :goto_48
    return v0
.end method
