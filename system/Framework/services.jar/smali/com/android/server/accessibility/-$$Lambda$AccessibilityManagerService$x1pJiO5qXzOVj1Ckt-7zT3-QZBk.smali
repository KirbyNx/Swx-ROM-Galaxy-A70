.class public final synthetic Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$x1pJiO5qXzOVj1Ckt-7zT3-QZBk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$x1pJiO5qXzOVj1Ckt-7zT3-QZBk;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$x1pJiO5qXzOVj1Ckt-7zT3-QZBk;

    invoke-direct {v0}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$x1pJiO5qXzOVj1Ckt-7zT3-QZBk;-><init>()V

    sput-object v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$x1pJiO5qXzOVj1Ckt-7zT3-QZBk;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$x1pJiO5qXzOVj1Ckt-7zT3-QZBk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$readAccessibilityDirectAccessSettingLocked$21(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
