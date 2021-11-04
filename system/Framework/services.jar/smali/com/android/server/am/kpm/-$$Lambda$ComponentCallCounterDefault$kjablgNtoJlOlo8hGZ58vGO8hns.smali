.class public final synthetic Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$kjablgNtoJlOlo8hGZ58vGO8hns;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$kjablgNtoJlOlo8hGZ58vGO8hns;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$kjablgNtoJlOlo8hGZ58vGO8hns;

    invoke-direct {v0}, Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$kjablgNtoJlOlo8hGZ58vGO8hns;-><init>()V

    sput-object v0, Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$kjablgNtoJlOlo8hGZ58vGO8hns;->INSTANCE:Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$kjablgNtoJlOlo8hGZ58vGO8hns;

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

    invoke-static {p1}, Lcom/android/server/am/kpm/ComponentCallCounterDefault;->lambda$countActivity$3(Ljava/lang/String;)Lcom/android/server/am/kpm/CallCount;

    move-result-object p1

    return-object p1
.end method
