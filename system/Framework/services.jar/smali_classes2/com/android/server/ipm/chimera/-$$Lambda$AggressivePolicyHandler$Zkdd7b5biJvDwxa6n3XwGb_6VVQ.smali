.class public final synthetic Lcom/android/server/ipm/chimera/-$$Lambda$AggressivePolicyHandler$Zkdd7b5biJvDwxa6n3XwGb_6VVQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/ipm/chimera/-$$Lambda$AggressivePolicyHandler$Zkdd7b5biJvDwxa6n3XwGb_6VVQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/ipm/chimera/-$$Lambda$AggressivePolicyHandler$Zkdd7b5biJvDwxa6n3XwGb_6VVQ;

    invoke-direct {v0}, Lcom/android/server/ipm/chimera/-$$Lambda$AggressivePolicyHandler$Zkdd7b5biJvDwxa6n3XwGb_6VVQ;-><init>()V

    sput-object v0, Lcom/android/server/ipm/chimera/-$$Lambda$AggressivePolicyHandler$Zkdd7b5biJvDwxa6n3XwGb_6VVQ;->INSTANCE:Lcom/android/server/ipm/chimera/-$$Lambda$AggressivePolicyHandler$Zkdd7b5biJvDwxa6n3XwGb_6VVQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    check-cast p2, Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    invoke-static {p1, p2}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->lambda$executePolicy$2(Lcom/android/server/ipm/chimera/ChimeraAppInfo;Lcom/android/server/ipm/chimera/ChimeraAppInfo;)I

    move-result p1

    return p1
.end method
