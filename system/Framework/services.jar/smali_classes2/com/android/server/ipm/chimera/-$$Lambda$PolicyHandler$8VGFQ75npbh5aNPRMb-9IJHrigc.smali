.class public final synthetic Lcom/android/server/ipm/chimera/-$$Lambda$PolicyHandler$8VGFQ75npbh5aNPRMb-9IJHrigc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/ipm/chimera/SystemRepository$ChimeraProcessObserver;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ipm/chimera/PolicyHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ipm/chimera/PolicyHandler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ipm/chimera/-$$Lambda$PolicyHandler$8VGFQ75npbh5aNPRMb-9IJHrigc;->f$0:Lcom/android/server/ipm/chimera/PolicyHandler;

    return-void
.end method


# virtual methods
.method public final onForegroundActivitiesChanged(IIZI[Ljava/lang/String;Z)V
    .registers 14

    iget-object v0, p0, Lcom/android/server/ipm/chimera/-$$Lambda$PolicyHandler$8VGFQ75npbh5aNPRMb-9IJHrigc;->f$0:Lcom/android/server/ipm/chimera/PolicyHandler;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/ipm/chimera/PolicyHandler;->lambda$registerProcessObserver$0$PolicyHandler(IIZI[Ljava/lang/String;Z)V

    return-void
.end method
