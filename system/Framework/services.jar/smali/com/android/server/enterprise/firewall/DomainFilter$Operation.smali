.class final enum Lcom/android/server/enterprise/firewall/DomainFilter$Operation;
.super Ljava/lang/Enum;
.source "DomainFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/DomainFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/enterprise/firewall/DomainFilter$Operation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

.field public static final enum ADD:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

.field public static final enum CAP_PORTAL:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

.field public static final enum CLEAR:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

.field public static final enum EXCEPTION:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

.field public static final enum FLUSHLIBC:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

.field public static final enum NET_ID:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

.field public static final enum REMOVE:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

.field public static final enum REPLACE:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 119
    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    const-string v1, "ADD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ADD:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    .line 120
    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    const-string v1, "REMOVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->REMOVE:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    .line 121
    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    const-string v1, "CLEAR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->CLEAR:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    .line 122
    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    const-string v1, "REPLACE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->REPLACE:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    .line 123
    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    const-string v1, "EXCEPTION"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->EXCEPTION:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    .line 124
    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    const-string v1, "CAP_PORTAL"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->CAP_PORTAL:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    .line 125
    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    const-string v1, "NET_ID"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->NET_ID:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    .line 126
    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    const-string v1, "FLUSHLIBC"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->FLUSHLIBC:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    .line 118
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    sget-object v10, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ADD:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    aput-object v10, v1, v2

    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->REMOVE:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->CLEAR:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->REPLACE:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->EXCEPTION:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->CAP_PORTAL:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->NET_ID:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->$VALUES:[Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/firewall/DomainFilter$Operation;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 118
    const-class v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    return-object v0
.end method

.method public static values()[Lcom/android/server/enterprise/firewall/DomainFilter$Operation;
    .registers 1

    .line 118
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->$VALUES:[Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v0}, [Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    return-object v0
.end method
