.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowState$bxtIMYyDtHPifbuGX_NsNhlq6zc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowState$bxtIMYyDtHPifbuGX_NsNhlq6zc;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$WindowState$bxtIMYyDtHPifbuGX_NsNhlq6zc;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$WindowState$bxtIMYyDtHPifbuGX_NsNhlq6zc;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$WindowState$bxtIMYyDtHPifbuGX_NsNhlq6zc;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowState$bxtIMYyDtHPifbuGX_NsNhlq6zc;

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

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {p1}, Lcom/android/server/wm/WindowState;->lambda$updateLetterboxDirectionIfNeeded$0(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    return p1
.end method
