.class public final synthetic Lcom/android/server/ipm/chimera/-$$Lambda$ChimeraAppInfo$K8jO23uDjRIbANE0npBSxBtVZH8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ipm/chimera/ChimeraAppInfo;

.field public final synthetic f$1:Lcom/android/server/ipm/chimera/SystemRepository;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ipm/chimera/ChimeraAppInfo;Lcom/android/server/ipm/chimera/SystemRepository;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ipm/chimera/-$$Lambda$ChimeraAppInfo$K8jO23uDjRIbANE0npBSxBtVZH8;->f$0:Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    iput-object p2, p0, Lcom/android/server/ipm/chimera/-$$Lambda$ChimeraAppInfo$K8jO23uDjRIbANE0npBSxBtVZH8;->f$1:Lcom/android/server/ipm/chimera/SystemRepository;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/ipm/chimera/-$$Lambda$ChimeraAppInfo$K8jO23uDjRIbANE0npBSxBtVZH8;->f$0:Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    iget-object v1, p0, Lcom/android/server/ipm/chimera/-$$Lambda$ChimeraAppInfo$K8jO23uDjRIbANE0npBSxBtVZH8;->f$1:Lcom/android/server/ipm/chimera/SystemRepository;

    check-cast p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->lambda$hasRestartService$0$ChimeraAppInfo(Lcom/android/server/ipm/chimera/SystemRepository;Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;)Z

    move-result p1

    return p1
.end method
