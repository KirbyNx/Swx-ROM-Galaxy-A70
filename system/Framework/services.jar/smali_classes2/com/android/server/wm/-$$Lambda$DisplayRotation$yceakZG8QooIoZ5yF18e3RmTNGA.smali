.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayRotation$yceakZG8QooIoZ5yF18e3RmTNGA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayRotation$yceakZG8QooIoZ5yF18e3RmTNGA;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayRotation$yceakZG8QooIoZ5yF18e3RmTNGA;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$DisplayRotation$yceakZG8QooIoZ5yF18e3RmTNGA;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$DisplayRotation$yceakZG8QooIoZ5yF18e3RmTNGA;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayRotation$yceakZG8QooIoZ5yF18e3RmTNGA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {p1}, Lcom/android/server/wm/DisplayRotation;->lambda$shouldRotateSeamlessly$2(Lcom/android/server/wm/WindowState;)Z

    move-result p1

    return p1
.end method
