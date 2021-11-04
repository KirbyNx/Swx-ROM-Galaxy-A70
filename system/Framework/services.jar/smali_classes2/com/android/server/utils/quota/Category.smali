.class public final Lcom/android/server/utils/quota/Category;
.super Ljava/lang/Object;
.source "Category.java"


# static fields
.field public static final SINGLE_CATEGORY:Lcom/android/server/utils/quota/Category;


# instance fields
.field private final mHash:I

.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    new-instance v0, Lcom/android/server/utils/quota/Category;

    const-string v1, "SINGLE"

    invoke-direct {v0, v1}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/utils/quota/Category;->SINGLE_CATEGORY:Lcom/android/server/utils/quota/Category;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/server/utils/quota/Category;->mName:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/server/utils/quota/Category;->mHash:I

    .line 46
    return-void
.end method


# virtual methods
.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 73
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 74
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/utils/quota/Category;->mName:Ljava/lang/String;

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 75
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 76
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 51
    if-ne p0, p1, :cond_4

    .line 52
    const/4 v0, 0x1

    return v0

    .line 54
    :cond_4
    instance-of v0, p1, Lcom/android/server/utils/quota/Category;

    if-eqz v0, :cond_14

    .line 55
    iget-object v0, p0, Lcom/android/server/utils/quota/Category;->mName:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lcom/android/server/utils/quota/Category;

    iget-object v1, v1, Lcom/android/server/utils/quota/Category;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 57
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 63
    iget v0, p0, Lcom/android/server/utils/quota/Category;->mHash:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Category{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/utils/quota/Category;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
