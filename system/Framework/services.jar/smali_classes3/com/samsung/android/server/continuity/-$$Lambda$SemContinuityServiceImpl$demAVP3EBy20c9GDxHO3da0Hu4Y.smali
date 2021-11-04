.class public final synthetic Lcom/samsung/android/server/continuity/-$$Lambda$SemContinuityServiceImpl$demAVP3EBy20c9GDxHO3da0Hu4Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;

.field public final synthetic f$1:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;Landroid/os/UserHandle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/continuity/-$$Lambda$SemContinuityServiceImpl$demAVP3EBy20c9GDxHO3da0Hu4Y;->f$0:Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;

    iput-object p2, p0, Lcom/samsung/android/server/continuity/-$$Lambda$SemContinuityServiceImpl$demAVP3EBy20c9GDxHO3da0Hu4Y;->f$1:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/continuity/-$$Lambda$SemContinuityServiceImpl$demAVP3EBy20c9GDxHO3da0Hu4Y;->f$0:Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;

    iget-object v1, p0, Lcom/samsung/android/server/continuity/-$$Lambda$SemContinuityServiceImpl$demAVP3EBy20c9GDxHO3da0Hu4Y;->f$1:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->lambda$onUserSwitching$0$SemContinuityServiceImpl(Landroid/os/UserHandle;)V

    return-void
.end method
