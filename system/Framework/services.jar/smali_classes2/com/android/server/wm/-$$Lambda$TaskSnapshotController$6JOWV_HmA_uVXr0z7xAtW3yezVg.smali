.class public final synthetic Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$6JOWV_HmA_uVXr0z7xAtW3yezVg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskSnapshotController;

.field public final synthetic f$1:Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskSnapshotController;Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$6JOWV_HmA_uVXr0z7xAtW3yezVg;->f$0:Lcom/android/server/wm/TaskSnapshotController;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$6JOWV_HmA_uVXr0z7xAtW3yezVg;->f$1:Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$6JOWV_HmA_uVXr0z7xAtW3yezVg;->f$0:Lcom/android/server/wm/TaskSnapshotController;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$6JOWV_HmA_uVXr0z7xAtW3yezVg;->f$1:Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskSnapshotController;->lambda$screenTurningOff$4$TaskSnapshotController(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    return-void
.end method
