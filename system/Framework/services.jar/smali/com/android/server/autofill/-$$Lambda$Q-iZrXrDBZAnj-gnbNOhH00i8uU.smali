.class public final synthetic Lcom/android/server/autofill/-$$Lambda$Q-iZrXrDBZAnj-gnbNOhH00i8uU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/autofill/-$$Lambda$Q-iZrXrDBZAnj-gnbNOhH00i8uU;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/autofill/-$$Lambda$Q-iZrXrDBZAnj-gnbNOhH00i8uU;

    invoke-direct {v0}, Lcom/android/server/autofill/-$$Lambda$Q-iZrXrDBZAnj-gnbNOhH00i8uU;-><init>()V

    sput-object v0, Lcom/android/server/autofill/-$$Lambda$Q-iZrXrDBZAnj-gnbNOhH00i8uU;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$Q-iZrXrDBZAnj-gnbNOhH00i8uU;

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

    check-cast p1, Landroid/os/IBinder;

    invoke-static {p1}, Landroid/service/autofill/IAutoFillService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/autofill/IAutoFillService;

    move-result-object p1

    return-object p1
.end method
