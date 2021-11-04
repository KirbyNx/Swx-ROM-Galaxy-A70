.class Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;
.super Ljava/lang/Object;
.source "PSITrackerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/psitracker/PSITrackerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForegroundApp"
.end annotation


# instance fields
.field pid:I

.field processName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/ipm/psitracker/PSITrackerService;

.field uid:I


# direct methods
.method private constructor <init>(Lcom/android/server/ipm/psitracker/PSITrackerService;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;->this$0:Lcom/android/server/ipm/psitracker/PSITrackerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ipm/psitracker/PSITrackerService;Lcom/android/server/ipm/psitracker/PSITrackerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/ipm/psitracker/PSITrackerService;
    .param p2, "x1"    # Lcom/android/server/ipm/psitracker/PSITrackerService$1;

    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;-><init>(Lcom/android/server/ipm/psitracker/PSITrackerService;)V

    return-void
.end method
