.class public final synthetic Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$7iM0kS8m83OtlVZy-c3RoomdlUg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$7iM0kS8m83OtlVZy-c3RoomdlUg;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$7iM0kS8m83OtlVZy-c3RoomdlUg;

    invoke-direct {v0}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$7iM0kS8m83OtlVZy-c3RoomdlUg;-><init>()V

    sput-object v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$7iM0kS8m83OtlVZy-c3RoomdlUg;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$7iM0kS8m83OtlVZy-c3RoomdlUg;

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

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$removeShortcutTargetForUnboundServiceLocked$20(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
