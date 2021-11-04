.class public final synthetic Lcom/android/server/ipm/chimera/-$$Lambda$PolicyHandler$pqi8TdNLZAHkOv0gzL_uILufhII;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ipm/chimera/PolicyHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ipm/chimera/PolicyHandler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ipm/chimera/-$$Lambda$PolicyHandler$pqi8TdNLZAHkOv0gzL_uILufhII;->f$0:Lcom/android/server/ipm/chimera/PolicyHandler;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/ipm/chimera/-$$Lambda$PolicyHandler$pqi8TdNLZAHkOv0gzL_uILufhII;->f$0:Lcom/android/server/ipm/chimera/PolicyHandler;

    check-cast p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;

    invoke-virtual {v0, p1}, Lcom/android/server/ipm/chimera/PolicyHandler;->lambda$isReusedPid$1$PolicyHandler(Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;)Z

    move-result p1

    return p1
.end method
