.class public final synthetic Lcom/android/server/wm/-$$Lambda$PersonaActivityHelper$OrdfFRYYYWub94Y0oQOHuE0teO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuintPredicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$PersonaActivityHelper$OrdfFRYYYWub94Y0oQOHuE0teO0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$PersonaActivityHelper$OrdfFRYYYWub94Y0oQOHuE0teO0;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$PersonaActivityHelper$OrdfFRYYYWub94Y0oQOHuE0teO0;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$PersonaActivityHelper$OrdfFRYYYWub94Y0oQOHuE0teO0;->INSTANCE:Lcom/android/server/wm/-$$Lambda$PersonaActivityHelper$OrdfFRYYYWub94Y0oQOHuE0teO0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6

    check-cast p1, Lcom/android/server/wm/Task;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/wm/PersonaActivityHelper;->lambda$OrdfFRYYYWub94Y0oQOHuE0teO0(Lcom/android/server/wm/Task;ZIZI)Z

    move-result p1

    return p1
.end method
