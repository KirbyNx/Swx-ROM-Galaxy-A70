.class Lcom/android/server/accessibility/AccessibilityManagerService$DaltonizerEnabledStateContentObserver;
.super Landroid/database/ContentObserver;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DaltonizerEnabledStateContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 2

    .line 5790
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$DaltonizerEnabledStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 5791
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 5792
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .line 5796
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 5797
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$DaltonizerEnabledStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->applyDaltonizerSettings()V
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$10400(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 5798
    return-void
.end method
