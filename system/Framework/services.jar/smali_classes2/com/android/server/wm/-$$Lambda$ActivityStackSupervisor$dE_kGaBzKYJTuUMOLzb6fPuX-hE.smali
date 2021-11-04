.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$dE_kGaBzKYJTuUMOLzb6fPuX-hE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityStackSupervisor;

.field public final synthetic f$1:Lcom/android/server/wm/WindowProcessController;

.field public final synthetic f$2:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$dE_kGaBzKYJTuUMOLzb6fPuX-hE;->f$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$dE_kGaBzKYJTuUMOLzb6fPuX-hE;->f$1:Lcom/android/server/wm/WindowProcessController;

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$dE_kGaBzKYJTuUMOLzb6fPuX-hE;->f$2:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$dE_kGaBzKYJTuUMOLzb6fPuX-hE;->f$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$dE_kGaBzKYJTuUMOLzb6fPuX-hE;->f$1:Lcom/android/server/wm/WindowProcessController;

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$dE_kGaBzKYJTuUMOLzb6fPuX-hE;->f$2:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->lambda$startSpecificActivity$0$ActivityStackSupervisor(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
