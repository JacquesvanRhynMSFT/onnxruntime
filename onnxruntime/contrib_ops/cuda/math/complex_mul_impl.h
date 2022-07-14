// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License.

#pragma once

#include "core/providers/cuda/shared_inc/binary_elementwise_args.h"

namespace onnxruntime {
namespace contrib {
namespace cuda {

using namespace ::onnxruntime::cuda;

template <typename T, bool IsConj>
void ComplexMul_Impl(cudaStream_t stream, const T* lhs_data, const T* rhs_data, T* output_data,
                     const BinaryElementwiseArgs& args);

}  // namespace cuda
}  // namespace contrib
}  // namespace onnxruntime
