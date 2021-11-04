.class public Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;
.super Ljava/security/MessageDigest;
.source "MD4.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final BLOCK_LENGTH:I = 0x40


# instance fields
.field private X:[I

.field private buffer:[B

.field private context:[I

.field private count:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    const-string v0, "MD4"

    invoke-direct {p0, v0}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->context:[I

    .line 34
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->buffer:[B

    .line 35
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    .line 39
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->engineReset()V

    .line 40
    return-void
.end method

.method private constructor <init>(Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;)V
    .registers 4
    .param p1, "md"    # Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;

    .line 43
    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;-><init>()V

    .line 44
    iget-object v0, p1, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->context:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->context:[I

    .line 45
    iget-object v0, p1, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->buffer:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->buffer:[B

    .line 46
    iget-wide v0, p1, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->count:J

    iput-wide v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->count:J

    .line 47
    return-void
.end method

.method private FF(IIIIII)I
    .registers 10
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I
    .param p5, "x"    # I
    .param p6, "s"    # I

    .line 188
    and-int v0, p2, p3

    not-int v1, p2

    and-int/2addr v1, p4

    or-int/2addr v0, v1

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    .line 189
    .local v0, "t":I
    shl-int v1, v0, p6

    rsub-int/lit8 v2, p6, 0x20

    ushr-int v2, v0, v2

    or-int/2addr v1, v2

    return v1
.end method

.method private GG(IIIIII)I
    .registers 10
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I
    .param p5, "x"    # I
    .param p6, "s"    # I

    .line 193
    or-int v0, p3, p4

    and-int/2addr v0, p2

    and-int v1, p3, p4

    or-int/2addr v0, v1

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, 0x5a827999

    add-int/2addr v0, v1

    .line 194
    .local v0, "t":I
    shl-int v1, v0, p6

    rsub-int/lit8 v2, p6, 0x20

    ushr-int v2, v0, v2

    or-int/2addr v1, v2

    return v1
.end method

.method private HH(IIIIII)I
    .registers 10
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I
    .param p5, "x"    # I
    .param p6, "s"    # I

    .line 198
    xor-int v0, p2, p3

    xor-int/2addr v0, p4

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, 0x6ed9eba1

    add-int/2addr v0, v1

    .line 199
    .local v0, "t":I
    shl-int v1, v0, p6

    rsub-int/lit8 v2, p6, 0x20

    ushr-int v2, v0, v2

    or-int/2addr v1, v2

    return v1
.end method

.method private transform([BI)V
    .registers 32
    .param p1, "block"    # [B
    .param p2, "offset"    # I

    .line 120
    move-object/from16 v7, p0

    const/4 v0, 0x0

    move/from16 v8, p2

    .end local p2    # "offset":I
    .local v0, "i":I
    .local v8, "offset":I
    :goto_5
    const/16 v1, 0x10

    const/16 v9, 0x8

    if-ge v0, v1, :cond_32

    .line 121
    iget-object v2, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    add-int/lit8 v3, v8, 0x1

    .end local v8    # "offset":I
    .local v3, "offset":I
    aget-byte v4, p1, v8

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "offset":I
    .local v5, "offset":I
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v9

    or-int/2addr v3, v4

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .local v4, "offset":I
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v1, v5, 0x10

    or-int/2addr v1, v3

    add-int/lit8 v8, v4, 0x1

    .end local v4    # "offset":I
    .restart local v8    # "offset":I
    aget-byte v3, p1, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v1, v3

    aput v1, v2, v0

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 125
    .end local v0    # "i":I
    :cond_32
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->context:[I

    const/4 v10, 0x0

    aget v11, v0, v10

    .line 126
    .local v11, "A":I
    const/4 v12, 0x1

    aget v13, v0, v12

    .line 127
    .local v13, "B":I
    const/4 v14, 0x2

    aget v15, v0, v14

    .line 128
    .local v15, "C":I
    const/16 v16, 0x3

    aget v17, v0, v16

    .line 130
    .local v17, "D":I
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v10

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v15

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->FF(IIIIII)I

    move-result v11

    .line 131
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v12

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->FF(IIIIII)I

    move-result v17

    .line 132
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v14

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v17

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->FF(IIIIII)I

    move-result v15

    .line 133
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v16

    const/16 v6, 0x13

    move-object/from16 v0, p0

    move v1, v13

    move v2, v15

    move/from16 v3, v17

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->FF(IIIIII)I

    move-result v13

    .line 134
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    const/16 v18, 0x4

    aget v5, v0, v18

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v15

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->FF(IIIIII)I

    move-result v11

    .line 135
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    const/16 v19, 0x5

    aget v5, v0, v19

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->FF(IIIIII)I

    move-result v17

    .line 136
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    const/16 v20, 0x6

    aget v5, v0, v20

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v17

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->FF(IIIIII)I

    move-result v15

    .line 137
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    const/16 v21, 0x7

    aget v5, v0, v21

    const/16 v6, 0x13

    move-object/from16 v0, p0

    move v1, v13

    move v2, v15

    move/from16 v3, v17

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->FF(IIIIII)I

    move-result v13

    .line 138
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v9

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v15

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->FF(IIIIII)I

    move-result v11

    .line 139
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    const/16 v22, 0x9

    aget v5, v0, v22

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->FF(IIIIII)I

    move-result v17

    .line 140
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    const/16 v23, 0xa

    aget v5, v0, v23

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v17

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->FF(IIIIII)I

    move-result v15

    .line 141
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    const/16 v24, 0xb

    aget v5, v0, v24

    const/16 v6, 0x13

    move-object/from16 v0, p0

    move v1, v13

    move v2, v15

    move/from16 v3, v17

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->FF(IIIIII)I

    move-result v13

    .line 142
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    const/16 v25, 0xc

    aget v5, v0, v25

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v15

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->FF(IIIIII)I

    move-result v11

    .line 143
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    const/16 v26, 0xd

    aget v5, v0, v26

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->FF(IIIIII)I

    move-result v17

    .line 144
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    const/16 v27, 0xe

    aget v5, v0, v27

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v17

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->FF(IIIIII)I

    move-result v15

    .line 145
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    const/16 v28, 0xf

    aget v5, v0, v28

    const/16 v6, 0x13

    move-object/from16 v0, p0

    move v1, v13

    move v2, v15

    move/from16 v3, v17

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->FF(IIIIII)I

    move-result v13

    .line 147
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v10

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v15

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->GG(IIIIII)I

    move-result v11

    .line 148
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v18

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->GG(IIIIII)I

    move-result v17

    .line 149
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v9

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v17

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->GG(IIIIII)I

    move-result v15

    .line 150
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v25

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move v1, v13

    move v2, v15

    move/from16 v3, v17

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->GG(IIIIII)I

    move-result v13

    .line 151
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v12

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v15

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->GG(IIIIII)I

    move-result v11

    .line 152
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v19

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->GG(IIIIII)I

    move-result v17

    .line 153
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v22

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v17

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->GG(IIIIII)I

    move-result v15

    .line 154
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v26

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move v1, v13

    move v2, v15

    move/from16 v3, v17

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->GG(IIIIII)I

    move-result v13

    .line 155
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v14

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v15

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->GG(IIIIII)I

    move-result v11

    .line 156
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v20

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->GG(IIIIII)I

    move-result v17

    .line 157
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v23

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v17

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->GG(IIIIII)I

    move-result v15

    .line 158
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v27

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move v1, v13

    move v2, v15

    move/from16 v3, v17

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->GG(IIIIII)I

    move-result v13

    .line 159
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v16

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v15

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->GG(IIIIII)I

    move-result v11

    .line 160
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v21

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->GG(IIIIII)I

    move-result v17

    .line 161
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v24

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v17

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->GG(IIIIII)I

    move-result v15

    .line 162
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v28

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move v1, v13

    move v2, v15

    move/from16 v3, v17

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->GG(IIIIII)I

    move-result v13

    .line 164
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v10

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v15

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->HH(IIIIII)I

    move-result v11

    .line 165
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v9

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->HH(IIIIII)I

    move-result v9

    .line 166
    .end local v17    # "D":I
    .local v9, "D":I
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v18

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v15

    move v2, v9

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->HH(IIIIII)I

    move-result v15

    .line 167
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v25

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v13

    move v2, v15

    move v3, v9

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->HH(IIIIII)I

    move-result v13

    .line 168
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v14

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v15

    move v4, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->HH(IIIIII)I

    move-result v11

    .line 169
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v23

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v9

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->HH(IIIIII)I

    move-result v9

    .line 170
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v20

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v15

    move v2, v9

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->HH(IIIIII)I

    move-result v15

    .line 171
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v27

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v13

    move v2, v15

    move v3, v9

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->HH(IIIIII)I

    move-result v13

    .line 172
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v12

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v15

    move v4, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->HH(IIIIII)I

    move-result v11

    .line 173
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v22

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v9

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->HH(IIIIII)I

    move-result v9

    .line 174
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v19

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v15

    move v2, v9

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->HH(IIIIII)I

    move-result v15

    .line 175
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v26

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v13

    move v2, v15

    move v3, v9

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->HH(IIIIII)I

    move-result v13

    .line 176
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v16

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v15

    move v4, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->HH(IIIIII)I

    move-result v11

    .line 177
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v24

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v9

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->HH(IIIIII)I

    move-result v9

    .line 178
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v21

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v15

    move v2, v9

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->HH(IIIIII)I

    move-result v15

    .line 179
    iget-object v0, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->X:[I

    aget v5, v0, v28

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v13

    move v2, v15

    move v3, v9

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->HH(IIIIII)I

    move-result v0

    .line 181
    .end local v13    # "B":I
    .local v0, "B":I
    iget-object v1, v7, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->context:[I

    aget v2, v1, v10

    add-int/2addr v2, v11

    aput v2, v1, v10

    .line 182
    aget v2, v1, v12

    add-int/2addr v2, v0

    aput v2, v1, v12

    .line 183
    aget v2, v1, v14

    add-int/2addr v2, v15

    aput v2, v1, v14

    .line 184
    aget v2, v1, v16

    add-int/2addr v2, v9

    aput v2, v1, v16

    .line 185
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .line 50
    new-instance v0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;-><init>(Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;)V

    return-object v0
.end method

.method public engineDigest()[B
    .registers 11

    .line 96
    iget-wide v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->count:J

    const-wide/16 v2, 0x40

    rem-long/2addr v0, v2

    long-to-int v0, v0

    .line 97
    .local v0, "bufferNdx":I
    const/16 v1, 0x38

    if-ge v0, v1, :cond_d

    rsub-int/lit8 v1, v0, 0x38

    goto :goto_f

    :cond_d
    rsub-int/lit8 v1, v0, 0x78

    .line 99
    .local v1, "padLen":I
    :goto_f
    add-int/lit8 v2, v1, 0x8

    new-array v2, v2, [B

    .line 100
    .local v2, "tail":[B
    const/16 v3, -0x80

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    .line 102
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    const/16 v5, 0x8

    if-ge v3, v5, :cond_2e

    .line 103
    add-int v5, v1, v3

    iget-wide v6, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->count:J

    const-wide/16 v8, 0x8

    mul-long/2addr v6, v8

    mul-int/lit8 v8, v3, 0x8

    ushr-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 102
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 105
    .end local v3    # "i":I
    :cond_2e
    array-length v3, v2

    invoke-virtual {p0, v2, v4, v3}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->engineUpdate([BII)V

    .line 107
    const/16 v3, 0x10

    new-array v3, v3, [B

    .line 109
    .local v3, "result":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_37
    const/4 v5, 0x4

    if-ge v4, v5, :cond_50

    .line 110
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3b
    if-ge v6, v5, :cond_4d

    .line 111
    mul-int/lit8 v7, v4, 0x4

    add-int/2addr v7, v6

    iget-object v8, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->context:[I

    aget v8, v8, v4

    mul-int/lit8 v9, v6, 0x8

    ushr-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    .line 110
    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    .line 109
    .end local v6    # "j":I
    :cond_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    .line 115
    .end local v4    # "i":I
    :cond_50
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->engineReset()V

    .line 116
    return-object v3
.end method

.method public engineReset()V
    .registers 5

    .line 55
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->context:[I

    const v1, 0x67452301

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 56
    const v1, -0x10325477

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 57
    const/4 v1, 0x2

    const v3, -0x67452302

    aput v3, v0, v1

    .line 58
    const/4 v1, 0x3

    const v3, 0x10325476

    aput v3, v0, v1

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->count:J

    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1f
    const/16 v1, 0x40

    if-ge v0, v1, :cond_2a

    .line 61
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->buffer:[B

    aput-byte v2, v1, v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 62
    .end local v0    # "i":I
    :cond_2a
    return-void
.end method

.method public engineUpdate(B)V
    .registers 7
    .param p1, "b"    # B

    .line 66
    iget-wide v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->count:J

    const-wide/16 v2, 0x40

    rem-long v2, v0, v2

    long-to-int v2, v2

    .line 67
    .local v2, "i":I
    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->count:J

    .line 68
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->buffer:[B

    aput-byte p1, v0, v2

    .line 69
    const/16 v1, 0x3f

    if-ne v2, v1, :cond_18

    .line 70
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->transform([BI)V

    .line 71
    :cond_18
    return-void
.end method

.method public engineUpdate([BII)V
    .registers 10
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 74
    if-ltz p2, :cond_44

    if-ltz p3, :cond_44

    int-to-long v0, p2

    int-to-long v2, p3

    add-long/2addr v0, v2

    array-length v2, p1

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_44

    .line 76
    iget-wide v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->count:J

    const-wide/16 v2, 0x40

    rem-long v2, v0, v2

    long-to-int v2, v2

    .line 77
    .local v2, "bufferNdx":I
    int-to-long v3, p3

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->count:J

    .line 78
    rsub-int/lit8 v0, v2, 0x40

    .line 79
    .local v0, "partLen":I
    const/4 v1, 0x0

    .line 80
    .local v1, "i":I
    if-lt p3, v0, :cond_38

    .line 81
    iget-object v3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->buffer:[B

    invoke-static {p1, p2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    iget-object v3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->buffer:[B

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->transform([BI)V

    .line 85
    move v1, v0

    :goto_29
    add-int/lit8 v3, v1, 0x40

    add-int/lit8 v3, v3, -0x1

    if-ge v3, p3, :cond_37

    .line 86
    add-int v3, p2, v1

    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->transform([BI)V

    .line 85
    add-int/lit8 v1, v1, 0x40

    goto :goto_29

    .line 87
    :cond_37
    const/4 v2, 0x0

    .line 90
    :cond_38
    if-ge v1, p3, :cond_43

    .line 91
    add-int v3, p2, v1

    iget-object v4, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;->buffer:[B

    sub-int v5, p3, v1

    invoke-static {p1, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    :cond_43
    return-void

    .line 75
    .end local v0    # "partLen":I
    .end local v1    # "i":I
    .end local v2    # "bufferNdx":I
    :cond_44
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method
