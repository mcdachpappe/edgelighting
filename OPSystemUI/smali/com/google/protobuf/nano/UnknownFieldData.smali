.class final Lcom/google/protobuf/nano/UnknownFieldData;
.super Ljava/lang/Object;
.source "UnknownFieldData.java"


# instance fields
.field final bytes:[B

.field final tag:I


# virtual methods
.method computeSerializedSize()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iget-object p0, p0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    array-length p0, p0

    add-int/2addr v0, p0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/nano/UnknownFieldData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/protobuf/nano/UnknownFieldData;

    iget v1, p0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    iget v3, p1, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    iget-object p1, p1, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    iget-object p0, p0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-virtual {p1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([B)V

    return-void
.end method
