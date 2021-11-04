.class Lcom/android/server/biometrics/SemAnalyticsManager$1;
.super Ljava/lang/Object;
.source "SemAnalyticsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/SemAnalyticsManager;->fpInsertLog(Lcom/android/server/biometrics/SemAnalyticsManager$EventData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/SemAnalyticsManager;

.field final synthetic val$ed:Lcom/android/server/biometrics/SemAnalyticsManager$EventData;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/SemAnalyticsManager;Lcom/android/server/biometrics/SemAnalyticsManager$EventData;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/biometrics/SemAnalyticsManager;

    .line 310
    iput-object p1, p0, Lcom/android/server/biometrics/SemAnalyticsManager$1;->this$0:Lcom/android/server/biometrics/SemAnalyticsManager;

    iput-object p2, p0, Lcom/android/server/biometrics/SemAnalyticsManager$1;->val$ed:Lcom/android/server/biometrics/SemAnalyticsManager$EventData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 313
    iget-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager$1;->this$0:Lcom/android/server/biometrics/SemAnalyticsManager;

    iget-object v1, p0, Lcom/android/server/biometrics/SemAnalyticsManager$1;->val$ed:Lcom/android/server/biometrics/SemAnalyticsManager$EventData;

    # invokes: Lcom/android/server/biometrics/SemAnalyticsManager;->fpHandleData(Lcom/android/server/biometrics/SemAnalyticsManager$EventData;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/SemAnalyticsManager;->access$000(Lcom/android/server/biometrics/SemAnalyticsManager;Lcom/android/server/biometrics/SemAnalyticsManager$EventData;)V

    .line 314
    return-void
.end method
