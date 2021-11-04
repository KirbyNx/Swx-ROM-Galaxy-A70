.class Lcom/android/server/MCPSPolicy$Builder;
.super Ljava/lang/Object;
.source "McpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MCPSPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# static fields
.field public static final TEMPLATE_DEFAULT:I = 0x0

.field public static final TEMPLATE_MOBILE:I = 0x2


# instance fields
.field private mInts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStrings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1064
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1069
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MCPSPolicy$Builder;->mStrings:Ljava/util/Map;

    .line 1070
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MCPSPolicy$Builder;->mInts:Ljava/util/Map;

    return-void
.end method

.method private static getMobileTemplate(I)Lcom/android/server/MCPSPolicy;
    .registers 3
    .param p0, "level"    # I

    .line 1090
    # getter for: Lcom/android/server/MCPSPolicy;->mobileHighPolicy:Lcom/android/server/MCPSPolicy;
    invoke-static {}, Lcom/android/server/MCPSPolicy;->access$000()Lcom/android/server/MCPSPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/MCPSPolicy;->duplicate()Lcom/android/server/MCPSPolicy;

    move-result-object v0

    .line 1091
    .local v0, "policy":Lcom/android/server/MCPSPolicy;
    if-eqz p0, :cond_23

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1a

    const/4 v1, 0x2

    if-eq p0, v1, :cond_11

    goto :goto_2c

    .line 1099
    :cond_11
    # getter for: Lcom/android/server/MCPSPolicy;->mobileLowPolicy:Lcom/android/server/MCPSPolicy;
    invoke-static {}, Lcom/android/server/MCPSPolicy;->access$200()Lcom/android/server/MCPSPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/MCPSPolicy;->duplicate()Lcom/android/server/MCPSPolicy;

    move-result-object v0

    .line 1100
    goto :goto_2c

    .line 1096
    :cond_1a
    # getter for: Lcom/android/server/MCPSPolicy;->mobileMidPolicy:Lcom/android/server/MCPSPolicy;
    invoke-static {}, Lcom/android/server/MCPSPolicy;->access$100()Lcom/android/server/MCPSPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/MCPSPolicy;->duplicate()Lcom/android/server/MCPSPolicy;

    move-result-object v0

    .line 1097
    goto :goto_2c

    .line 1093
    :cond_23
    # getter for: Lcom/android/server/MCPSPolicy;->mobileHighPolicy:Lcom/android/server/MCPSPolicy;
    invoke-static {}, Lcom/android/server/MCPSPolicy;->access$000()Lcom/android/server/MCPSPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/MCPSPolicy;->duplicate()Lcom/android/server/MCPSPolicy;

    move-result-object v0

    .line 1094
    nop

    .line 1104
    :goto_2c
    return-object v0
.end method

.method public static getTemplate(I)Lcom/android/server/MCPSPolicy;
    .registers 3
    .param p0, "template"    # I

    .line 1108
    if-eqz p0, :cond_1b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_e

    .line 1121
    # getter for: Lcom/android/server/MCPSPolicy;->defaultPolicy:Lcom/android/server/MCPSPolicy;
    invoke-static {}, Lcom/android/server/MCPSPolicy;->access$400()Lcom/android/server/MCPSPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/MCPSPolicy;->duplicate()Lcom/android/server/MCPSPolicy;

    move-result-object v0

    return-object v0

    .line 1116
    :cond_e
    const/4 v0, 0x1

    const-string/jumbo v1, "persist.sys.mcps_level"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1117
    .local v0, "level":I
    invoke-static {v0}, Lcom/android/server/MCPSPolicy$Builder;->getMobileTemplate(I)Lcom/android/server/MCPSPolicy;

    move-result-object v1

    return-object v1

    .line 1110
    .end local v0    # "level":I
    :cond_1b
    # getter for: Lcom/android/server/MCPSPolicy;->onBootPolicy:Lcom/android/server/MCPSPolicy;
    invoke-static {}, Lcom/android/server/MCPSPolicy;->access$300()Lcom/android/server/MCPSPolicy;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 1111
    # getter for: Lcom/android/server/MCPSPolicy;->defaultPolicy:Lcom/android/server/MCPSPolicy;
    invoke-static {}, Lcom/android/server/MCPSPolicy;->access$400()Lcom/android/server/MCPSPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/MCPSPolicy;->duplicate()Lcom/android/server/MCPSPolicy;

    move-result-object v0

    return-object v0

    .line 1113
    :cond_2a
    # getter for: Lcom/android/server/MCPSPolicy;->onBootPolicy:Lcom/android/server/MCPSPolicy;
    invoke-static {}, Lcom/android/server/MCPSPolicy;->access$300()Lcom/android/server/MCPSPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/MCPSPolicy;->duplicate()Lcom/android/server/MCPSPolicy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public build()Lcom/android/server/MCPSPolicy;
    .registers 4

    .line 1126
    new-instance v0, Lcom/android/server/MCPSPolicy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/MCPSPolicy;-><init>(Lcom/android/server/MCPSPolicy$1;)V

    .line 1127
    .local v0, "policy":Lcom/android/server/MCPSPolicy;
    # getter for: Lcom/android/server/MCPSPolicy;->mStrings:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/MCPSPolicy;->access$600(Lcom/android/server/MCPSPolicy;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/MCPSPolicy$Builder;->mStrings:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1128
    # getter for: Lcom/android/server/MCPSPolicy;->mInts:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/MCPSPolicy;->access$700(Lcom/android/server/MCPSPolicy;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/MCPSPolicy$Builder;->mInts:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1130
    return-object v0
.end method

.method public setInt(Ljava/lang/String;I)Lcom/android/server/MCPSPolicy$Builder;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 1073
    if-gez p2, :cond_3

    .line 1074
    return-object p0

    .line 1076
    :cond_3
    iget-object v0, p0, Lcom/android/server/MCPSPolicy$Builder;->mInts:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    return-object p0
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/MCPSPolicy$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1081
    const-string/jumbo v0, "rmnet%d"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1082
    invoke-static {p2}, Lcom/android/server/McpsService;->valid_hex(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1083
    return-object p0

    .line 1085
    :cond_10
    iget-object v0, p0, Lcom/android/server/MCPSPolicy$Builder;->mStrings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    return-object p0
.end method
