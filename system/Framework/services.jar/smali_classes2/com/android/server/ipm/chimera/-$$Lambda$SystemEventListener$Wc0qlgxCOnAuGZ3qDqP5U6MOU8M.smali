.class public final synthetic Lcom/android/server/ipm/chimera/-$$Lambda$SystemEventListener$Wc0qlgxCOnAuGZ3qDqP5U6MOU8M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/ipm/chimera/SystemRepository$ChimeraProcessObserver;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ipm/chimera/SystemEventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ipm/chimera/SystemEventListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ipm/chimera/-$$Lambda$SystemEventListener$Wc0qlgxCOnAuGZ3qDqP5U6MOU8M;->f$0:Lcom/android/server/ipm/chimera/SystemEventListener;

    return-void
.end method


# virtual methods
.method public final onForegroundActivitiesChanged(IIZI[Ljava/lang/String;Z)V
    .registers 14

    iget-object v0, p0, Lcom/android/server/ipm/chimera/-$$Lambda$SystemEventListener$Wc0qlgxCOnAuGZ3qDqP5U6MOU8M;->f$0:Lcom/android/server/ipm/chimera/SystemEventListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/ipm/chimera/SystemEventListener;->lambda$new$0$SystemEventListener(IIZI[Ljava/lang/String;Z)V

    return-void
.end method
