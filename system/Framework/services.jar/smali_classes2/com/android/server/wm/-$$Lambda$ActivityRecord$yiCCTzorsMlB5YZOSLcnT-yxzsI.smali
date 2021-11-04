.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityRecord$yiCCTzorsMlB5YZOSLcnT-yxzsI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$1:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityRecord$yiCCTzorsMlB5YZOSLcnT-yxzsI;->f$0:Lcom/android/server/wm/ActivityRecord;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$ActivityRecord$yiCCTzorsMlB5YZOSLcnT-yxzsI;->f$1:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$ActivityRecord$yiCCTzorsMlB5YZOSLcnT-yxzsI;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/wm/-$$Lambda$ActivityRecord$yiCCTzorsMlB5YZOSLcnT-yxzsI;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityRecord$yiCCTzorsMlB5YZOSLcnT-yxzsI;->f$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$ActivityRecord$yiCCTzorsMlB5YZOSLcnT-yxzsI;->f$1:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$ActivityRecord$yiCCTzorsMlB5YZOSLcnT-yxzsI;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/wm/-$$Lambda$ActivityRecord$yiCCTzorsMlB5YZOSLcnT-yxzsI;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ActivityRecord;->lambda$removeStartingWindow$3$ActivityRecord(Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;Ljava/lang/String;I)V

    return-void
.end method
