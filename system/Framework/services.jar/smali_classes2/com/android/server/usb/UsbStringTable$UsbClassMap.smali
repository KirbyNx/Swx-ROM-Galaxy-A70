.class Lcom/android/server/usb/UsbStringTable$UsbClassMap;
.super Ljava/lang/Object;
.source "UsbStringTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbStringTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbClassMap"
.end annotation


# instance fields
.field private final clasz:I

.field private onlyclasz:Z

.field private final protocol:I

.field private final subclass:I

.field private final szsubtext:Ljava/lang/String;

.field private final sztext:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/usb/UsbStringTable;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbStringTable;III)V
    .registers 5
    .param p2, "clasz"    # I
    .param p3, "subclass"    # I
    .param p4, "protocol"    # I

    .line 93
    iput-object p1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->this$0:Lcom/android/server/usb/UsbStringTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->onlyclasz:Z

    .line 94
    iput p2, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    .line 95
    iput p3, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->subclass:I

    .line 96
    iput p4, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->protocol:I

    .line 97
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->sztext:Ljava/lang/String;

    .line 98
    iput-object p1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->szsubtext:Ljava/lang/String;

    .line 99
    return-void
.end method

.method constructor <init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;)V
    .registers 6
    .param p2, "clasz"    # I
    .param p3, "subclass"    # I
    .param p4, "protocol"    # I
    .param p5, "sztext"    # Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->this$0:Lcom/android/server/usb/UsbStringTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->onlyclasz:Z

    .line 77
    iput p2, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    .line 78
    iput p3, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->subclass:I

    .line 79
    iput p4, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->protocol:I

    .line 80
    iput-object p5, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->sztext:Ljava/lang/String;

    .line 81
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->szsubtext:Ljava/lang/String;

    .line 82
    return-void
.end method

.method constructor <init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p2, "clasz"    # I
    .param p3, "subclass"    # I
    .param p4, "protocol"    # I
    .param p5, "sztext"    # Ljava/lang/String;
    .param p6, "szsubtext"    # Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->this$0:Lcom/android/server/usb/UsbStringTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->onlyclasz:Z

    .line 69
    iput p2, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    .line 70
    iput p3, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->subclass:I

    .line 71
    iput p4, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->protocol:I

    .line 72
    iput-object p5, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->sztext:Ljava/lang/String;

    .line 73
    iput-object p6, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->szsubtext:Ljava/lang/String;

    .line 74
    return-void
.end method

.method constructor <init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V
    .registers 5
    .param p2, "clasz"    # I
    .param p3, "sztext"    # Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->this$0:Lcom/android/server/usb/UsbStringTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->onlyclasz:Z

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->onlyclasz:Z

    .line 86
    iput p2, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    .line 87
    iput p1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->subclass:I

    .line 88
    iput p1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->protocol:I

    .line 89
    iput-object p3, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->sztext:Ljava/lang/String;

    .line 90
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->szsubtext:Ljava/lang/String;

    .line 91
    return-void
.end method


# virtual methods
.method public equals(III)Z
    .registers 7
    .param p1, "clasz"    # I
    .param p2, "subclass"    # I
    .param p3, "protocol"    # I

    .line 102
    iget-boolean v0, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->onlyclasz:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    .line 103
    iget v0, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    if-ne v0, p1, :cond_b

    goto :goto_c

    :cond_b
    move v1, v2

    :goto_c
    return v1

    .line 105
    :cond_d
    iget v0, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    if-ne v0, p1, :cond_1a

    iget v0, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->subclass:I

    if-ne v0, p2, :cond_1a

    iget v0, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->protocol:I

    if-ne v0, p3, :cond_1a

    goto :goto_1b

    :cond_1a
    move v1, v2

    :goto_1b
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 110
    instance-of v0, p1, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 111
    move-object v0, p1

    check-cast v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    .line 112
    .local v0, "tmp":Lcom/android/server/usb/UsbStringTable$UsbClassMap;
    iget-boolean v2, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->onlyclasz:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_15

    .line 113
    iget v2, v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    iget v4, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    if-ne v2, v4, :cond_14

    move v1, v3

    :cond_14
    return v1

    .line 115
    :cond_15
    iget v2, v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    iget v4, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    if-ne v2, v4, :cond_28

    iget v2, v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->subclass:I

    iget v4, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->subclass:I

    if-ne v2, v4, :cond_28

    iget v2, v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->protocol:I

    iget v4, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->protocol:I

    if-ne v2, v4, :cond_28

    move v1, v3

    :cond_28
    return v1

    .line 117
    .end local v0    # "tmp":Lcom/android/server/usb/UsbStringTable$UsbClassMap;
    :cond_29
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 122
    iget v0, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->subclass:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->protocol:I

    or-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 127
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->sztext:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "tmp":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->szsubtext:Ljava/lang/String;

    if-eqz v1, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->szsubtext:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    :cond_26
    return-object v0
.end method
