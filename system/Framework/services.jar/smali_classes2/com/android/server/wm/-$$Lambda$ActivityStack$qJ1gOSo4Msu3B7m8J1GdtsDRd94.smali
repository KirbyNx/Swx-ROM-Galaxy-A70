.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityStack$qJ1gOSo4Msu3B7m8J1GdtsDRd94;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityStack;

.field public final synthetic f$1:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$qJ1gOSo4Msu3B7m8J1GdtsDRd94;->f$0:Lcom/android/server/wm/ActivityStack;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$qJ1gOSo4Msu3B7m8J1GdtsDRd94;->f$1:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$qJ1gOSo4Msu3B7m8J1GdtsDRd94;->f$0:Lcom/android/server/wm/ActivityStack;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$qJ1gOSo4Msu3B7m8J1GdtsDRd94;->f$1:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStack;->lambda$resumeTopActivityInnerLocked$5$ActivityStack(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
