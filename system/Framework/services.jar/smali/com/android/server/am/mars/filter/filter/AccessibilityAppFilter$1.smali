.class Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$1;
.super Landroid/database/ContentObserver;
.source "AccessibilityAppFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->registerContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;


# direct methods
.method constructor <init>(Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 118
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 121
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;

    # invokes: Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->getEnabledAccessibilityPackage()V
    invoke-static {v0}, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->access$200(Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;)V

    .line 122
    return-void
.end method
